use std::sync::Arc;

use lavalink_rs::gateway::LavalinkEventHandler;
use lavalink_rs::LavalinkClient;
use lavalink_rs::model::{TrackFinish, TrackStart};
use serenity::{
	async_trait,
	framework::{
		standard::{
			Args, CommandResult,
			macros::command,
		},
	},
	model::{channel::Message},
};
use serenity::http::Http;
use serenity::model::prelude::ChannelId;
use serenity::prelude::*;
use songbird::{
	Event,
	EventContext,
	EventHandler as VoiceEventHandler,
	input::{
		restartable::Restartable,
	},
};

struct TrackEndNotifier {
	channel_id: ChannelId,
	http: Arc<Http>,
}

#[async_trait]
impl VoiceEventHandler for TrackEndNotifier {
	async fn act(&self, ctx: &EventContext<'_>) -> Option<Event> {
		if let EventContext::Track(track_list) = ctx {
			let _ = self.channel_id
				.say(&self.http, &format!("Tracks ended: {}.", track_list.len()))
				.await; //TODO log err using logging framework
		}

		None
	}
}

pub struct Lavalink;

impl TypeMapKey for Lavalink {
	type Value = LavalinkClient;
}

pub(crate) struct LavalinkHandler;

#[async_trait]
impl LavalinkEventHandler for LavalinkHandler {
	async fn track_start(&self, _client: LavalinkClient, event: TrackStart) {
		println!("Track started!\nGuild: {}", event.guild_id);
	}
	async fn track_finish(&self, _client: LavalinkClient, event: TrackFinish) {
		println!("Track finished!\nGuild: {}", event.guild_id)
	}
}

#[command]
async fn join(ctx: &Context, msg: &Message) -> CommandResult {
	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let channel_id = guild
		.voice_states
		.get(&msg.author.id)
		.and_then(|voice_state| voice_state.channel_id);

	let connect_to = match channel_id {
		Some(channel) => channel,
		None => {
			msg.reply(ctx, "Join a voice channel.").await?;

			return Ok(());
		}
	};

	let manager = songbird::get(ctx).await.unwrap().clone();

	let (_, handler) = manager.join_gateway(guild_id, connect_to).await;

	match handler {
		Ok(connection_info) => {
			let data = ctx.data.read().await;
			let lava_client = data.get::<Lavalink>().unwrap().clone();
			lava_client.create_session(&connection_info).await?;

			msg.channel_id
				.say(&ctx.http, &format!("Joined {}", connect_to.mention()))
				.await?;
		}
		Err(why) => {
			msg.channel_id
				.say(&ctx.http, format!("Error joining the channel: {}", why))
				.await?;
		}
	}

	Ok(())
}

#[command]
#[aliases("fuckoff")]
async fn leave(ctx: &Context, msg: &Message) -> CommandResult {
	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let manager = songbird::get(ctx).await.unwrap().clone();
	let has_handler = manager.get(guild_id).is_some();

	if has_handler {
		if let Err(e) = manager.remove(guild_id).await {
			msg.channel_id.say(&ctx.http, format!("Failed: {:?}", e)).await?;
		}

		//Clean up the player, even loops and data on leave
		//See https://docs.rs/lavalink-rs/0.7.2/lavalink_rs/struct.LavalinkClient.html#method.destroy
		{
			let data = ctx.data.read().await;
			let lava_client = data.get::<Lavalink>().unwrap().clone();
			lava_client.destroy(guild_id).await?;
			{
				let nodes = lava_client.nodes().await;
				nodes.remove(&guild_id.0);

				let loops = lava_client.loops().await;
				loops.remove(&guild_id.0);
			}
		}

		msg.channel_id.say(&ctx.http, "Left voice channel").await?;
	} else {
		msg.reply(ctx, "Not in a voice channel.\nYou can let me join your voice channel with the join command").await?;
	}

	Ok(())
}

#[command]
async fn play(ctx: &Context, msg: &Message, args: Args) -> CommandResult {
	let query = args.message().to_string();

	let guild_id = match ctx.cache.guild_channel(msg.channel_id).await {
		Some(channel) => channel.guild_id,
		None => {
			msg.channel_id
				.say(&ctx.http, "Error finding channel info")
				.await?;

			return Ok(());
		}
	};

	let manager = songbird::get(ctx).await.unwrap().clone();

	if let Some(_handler) = manager.get(guild_id) {
		let data = ctx.data.read().await;
		let lava_client = data.get::<Lavalink>().unwrap().clone();

		let query_information = lava_client.auto_search_tracks(&query).await?;

		if query_information.tracks.is_empty() {
			msg.channel_id
				.say(&ctx, "Could not find any video of the search query.")
				.await?;
			return Ok(());
		}

		for track in &query_information.tracks {
			if let Err(why) =

			&lava_client.play(guild_id, track.clone())
				// Change this to play() if you want your own custom queue or no queue at all.
				.queue()
				.await
			{
				eprintln!("{}", why);
				return Ok(());
			};
		}

		msg.channel_id
			.say(
				&ctx.http,
				format!(
					"Added to queue: {}",
					query_information.tracks[0].info.as_ref().unwrap().title
				),
			)
			.await?;
	} else {
		msg.channel_id
			.say(
				&ctx.http,
				"Use `join` first, to connect the bot to your current voice channel.",
			)
			.await?;
	}

	Ok(())
}

#[command]
async fn skip(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();

	if let Some(track) = lava_client.skip(msg.guild_id.unwrap()).await {
		msg.channel_id
			.say(
				ctx,
				format!("Skipped: {}", track.track.info.as_ref().unwrap().title),
			)
			.await?;
	} else {
		msg.channel_id.say(ctx, "Nothing to skip.").await?;
	}

	Ok(())
}
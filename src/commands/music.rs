use std::cmp::max;
use std::sync::Arc;

use chrono::Duration;
use lavalink_rs::gateway::LavalinkEventHandler;
use lavalink_rs::LavalinkClient;
use lavalink_rs::model::{Node, TrackFinish, TrackStart};
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
};
use rand::{SeedableRng, Rng};

struct TrackEndNotifier {
	channel_id: ChannelId,
	http: Arc<Http>,
}

struct CallerChannel {
	channel_id: ChannelId,
	http: Arc<Http>,
}

impl TypeMapKey for CallerChannel {
	type Value = CallerChannel;
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
	async fn track_start(&self, client: LavalinkClient, event: TrackStart) {
		//Use the data inside the Node Struct to store a Channel ID in the data Typemap field

		if let Some(node) = client.nodes().await.get(&event.guild_id) {
			if let Some(current_track) = &node.now_playing {
				let typemap = node.data.read().await;
				let caller_channel = typemap.get::<CallerChannel>().unwrap();
				let _ = caller_channel.channel_id.say(
					&caller_channel.http,
					format!("Now playing {}",
							current_track.track.info.as_ref().unwrap().title
					),
				).await;
			}
		}

		println!("Track started!\nGuild: {}", event.guild_id);
	}

	async fn track_finish(&self, _client: LavalinkClient, event: TrackFinish) {
		println!("Track finished!\nGuild: {}", event.guild_id);
		println!("Track finish reason: {}", event.reason);
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

			if let Some(node) = lava_client.nodes().await.get(guild_id.as_u64()) {
				set_caller_channel(&node, ctx.http.clone(), msg.channel_id).await;
			}

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

		let query_information = lava_client.get_tracks(&query).await?;

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
				"Added Track(s)",
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

#[command]
async fn info(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();

	if let Some(node) = lava_client.nodes().await.get(&msg.guild_id.unwrap().0) {
		if let Some(track) = &node.now_playing {
			msg.channel_id.send_message(
				&ctx.http,
				|message| {
					message.embed(|embed| {
						embed.field("Title: ", &track.track.info.as_ref().unwrap().title, false)
							.field("Link: ", &track.track.info.as_ref().unwrap().uri, false)
							.field("Duration: ", format_millis(track.track.info.as_ref().unwrap().length), false)
					}
					)
				},
			)
				.await?;
		} else {
			msg.channel_id
				.say(&ctx.http, "Nothing is playing at the moment.")
				.await?;
		}
	} else {
		msg.channel_id
			.say(&ctx.http, "Nothing is playing at the moment.")
			.await?;
	}
	Ok(())
}

#[command]
async fn queue(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());

	let page = if args.len() < 1 {
		1
	} else {
		let page_number = args.single::<usize>()?;
		max(page_number, 1)
	};


	let mut page_content = String::new();
	if let Some(node) = lava_client.nodes().await.get(&guild_id) {
		let queue = &node.queue;
		if queue.len() > 1 {
			for i in ((15 * (page - 1)) + 1)..((15 * page) + 1) {
				if i >= queue.len() { break; } //Stop the loop at the end of the Vector
				page_content.push_str(&format!("{} . {}\n", i, queue[i].track.info.as_ref().unwrap().title))
			}
			page_content.push_str(&format!("\n\nPage {} of {}", page, (((queue.len() - 1 )as f64) / 15.0).ceil()) )
		} else {
			page_content = "Queue is empty".to_string();
		}
	};

	msg.channel_id.send_message(&ctx.http, |msg| {
		msg.embed(|embed| {
			embed.description(page_content)
		})
	}).await?;


	Ok(())
}

#[command]
#[num_args(1)]
async fn remove(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();

	if let Some(mut node) = lava_client.nodes().await.get_mut(msg.guild_id.unwrap().as_u64()) {
		let queue = &mut node.queue;
		if let Ok(index) = args.single::<usize>() {
			if index > queue.len() || index < 1 {
				msg.channel_id.say(&ctx.http, "Invalid queue index").await?;
			} else {
				let removed_track = queue.remove(index);
				msg.channel_id.say(
					&ctx.http,
					format!("Removed track `{}` from the queue", removed_track.track.info.unwrap().title),
				).await?;
			}
		}
	}


	Ok(())
}

#[command]
async fn clear(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());

	if let Some(mut node) = lava_client.nodes().await.get_mut(&guild_id) {
		node.queue.truncate(1);
		msg.channel_id.say(&ctx.http, "Cleared queue").await?;
	} else {
		msg.reply(&ctx.http, "Not in a channel").await?;
	}


	Ok(())
}

#[command]
async fn pause(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());

	lava_client.pause(guild_id).await?;
	msg.channel_id.say(&ctx.http, "Paused player").await?;

	Ok(())
}

#[command]
#[aliases("resume")]
async fn unpause(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());

	lava_client.resume(guild_id).await?;
	msg.channel_id.say(&ctx.http, "Unpaused player").await?;

	Ok(())
}

#[command]
#[aliases("randomize")]
async fn shuffle(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());
	if let Some(mut node) = lava_client.nodes().await.get_mut(&guild_id) {
		let mut rng = rand::rngs::StdRng::from_entropy();

		for i in 1..node.queue.len() {
			let random_song_index = rng.gen_range(1..node.queue.len() as i64) as usize;
			node.queue.swap(i, random_song_index);
		}
	}

	msg.channel_id.say(
		&ctx.http,
		"Shuffled queue"
	).await?;

	Ok(())
}

async fn set_caller_channel(node: &Node, http: Arc<Http>, channel_id: ChannelId) {
	let mut typemap = node.data.write().await;
	let caller_channel = CallerChannel {
		http,
		channel_id,
	};
	typemap.insert::<CallerChannel>(caller_channel);
}

fn format_millis(millis: u64) -> String {
	let duration = Duration::milliseconds(millis as i64);
	format!("{:02}:{:02}:{:02}", duration.num_hours(), duration.num_minutes() % 60, duration.num_seconds() % 60)
}
use std::sync::Arc;
use std::sync::atomic::AtomicUsize;

use serenity::{
	async_trait,
	client::{Client, EventHandler},
	framework::{
		standard::{
			Args, CommandResult,
			macros::command,
		},
		StandardFramework,
	},
	model::{channel::Message, gateway::Ready},
	Result as SerenityResult,
};
use serenity::http::Http;
use serenity::model::prelude::ChannelId;
use serenity::prelude::*;
use songbird::{
	Event,
	EventContext,
	EventHandler as VoiceEventHandler,
	input::{
		self,
		restartable::Restartable,
	},
	SerenityInit,
	TrackEvent,
};

struct TrackEndNotifier {
	chan_id: ChannelId,
	http: Arc<Http>,
}

#[async_trait]
impl VoiceEventHandler for TrackEndNotifier {
	async fn act(&self, ctx: &EventContext<'_>) -> Option<Event> {
		if let EventContext::Track(track_list) = ctx {
			self.chan_id
				.say(&self.http, &format!("Tracks ended: {}.", track_list.len()))
				.await;
		}

		None
	}
}

struct ChannelDurationNotifier {
	chan_id: ChannelId,
	count: Arc<AtomicUsize>,
	http: Arc<Http>,
}

#[command]
#[only_in(guilds)]
async fn join(ctx: &Context, msg: &Message) -> CommandResult {
	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let channel_id = guild
		.voice_states.get(&msg.author.id)
		.and_then(|voice_state| voice_state.channel_id);

	let connect_to = match channel_id {
		Some(channel) => channel,
		None => {
			msg.reply(ctx, "Not in a voice channel").await?;

			return Ok(());
		}
	};

	let manager = songbird::get(ctx).await
		.expect("Songbird Voice client placed in at initialisation.").clone();

	let _handler = manager.join(guild_id, connect_to).await;

	msg.channel_id.say(&ctx.http, "Joined channel").await?;

	Ok(())
}

#[command]
#[only_in(guilds)]
#[aliases("fuckoff")]
async fn leave(ctx: &Context, msg: &Message) -> CommandResult {
	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let manager = songbird::get(ctx).await
		.expect("Songbird Voice client placed in at initialisation.").clone();
	let has_handler = manager.get(guild_id).is_some();

	if has_handler {
		if let Err(e) = manager.remove(guild_id).await {
			msg.channel_id.say(&ctx.http, format!("Failed: {:?}", e)).await?;
		}

		msg.channel_id.say(&ctx.http, "Left voice channel").await?;
	} else {
		msg.reply(ctx, "Not in a voice channel.\nYou can let me join your voice channel with the join command").await?;
	}

	Ok(())
}

#[command]
#[only_in(guilds)]
async fn play(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let url = match args.single::<String>() {
		Ok(url) => url,
		Err(_) => {
			msg.channel_id.say(&ctx.http, "Must provide a URL to a video or audio").await?;

			return Ok(());
		}
	};

	if !url.starts_with("http") {
		msg.channel_id.say(&ctx.http, "Must provide a valid URL").await?;

		return Ok(());
	}

	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let manager = songbird::get(ctx).await
		.expect("Songbird Voice client placed in at initialisation.").clone();

	if let Some(handler_lock) = manager.get(guild_id) {
		let mut handler = handler_lock.lock().await;

		let source = match songbird::ytdl(&url).await {
			Ok(source) => source,
			Err(why) => {
				println!("Err starting source: {:?}", why);

				msg.channel_id.say(&ctx.http, "Error sourcing ffmpeg").await?;

				return Ok(());
			}
		};

		handler.play_source(source);

		msg.channel_id.say(&ctx.http, "Playing song").await?;
	} else {
		msg.channel_id.say(&ctx.http, "Not in a voice channel to play in").await?;
	}

	Ok(())
}

#[command]
#[only_in(guilds)]
async fn queue(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let url = match args.single::<String>() {
		Ok(url) => url,
		Err(_) => {
			msg.channel_id
				.say(&ctx.http, "Must provide a URL to a video or audio")
				.await?;

			return Ok(());
		}
	};

	if !url.starts_with("http") {
		msg.channel_id
			.say(&ctx.http, "Must provide a valid URL")
			.await?;

		return Ok(());
	}

	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let manager = songbird::get(ctx)
		.await
		.expect("Songbird Voice client placed in at initialisation.")
		.clone();

	if let Some(handler_lock) = manager.get(guild_id) {
		let mut handler = handler_lock.lock().await;

		// Here, we use lazy restartable sources to make sure that we don't pay
		// for decoding, playback on tracks which aren't actually live yet.
		let source = match Restartable::ytdl(url, true).await {
			Ok(source) => source,
			Err(why) => {
				println!("Err starting source: {:?}", why);

				msg.channel_id.say(&ctx.http, "Error sourcing ffmpeg").await?;

				return Ok(());
			}
		};


		handler.enqueue_source(source.into());

		if handler.queue().len() == 1 {
			msg.channel_id
				.say(
					&ctx.http,
					format!("Now playing the song"),
				)
				.await?;
		} else {
			msg.channel_id
				.say(
					&ctx.http,
					format!("Added song to queue: position {}", handler.queue().len()),
				)
				.await?;
		}
	} else {
		msg.channel_id
			.say(&ctx.http, "Not in a voice channel to play in")
			.await?;
	}

	Ok(())
}

#[command]
#[only_in(guilds)]
async fn skip(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let manager = songbird::get(ctx)
		.await
		.expect("Songbird Voice client placed in at initialisation.")
		.clone();

	if let Some(handler_lock) = manager.get(guild_id) {
		let mut handler = handler_lock.lock().await;

		let _ = handler.queue().skip();

	} else {
		msg.channel_id
			.say(&ctx.http, "Not in a voice channel to play in")
			.await?;
	}

	Ok(())
}
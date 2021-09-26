use serenity::framework::standard::{Args, CommandResult};
use serenity::framework::standard::macros::command;
use serenity::model::prelude::{Message, GuildId};
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;
use crate::commands::music::util::is_link;
use lavalink_rs::error::LavalinkError;
use lavalink_rs::LavalinkClient;
use lavalink_rs::model::Track;

#[command]
#[description("Adds a song to the end of the queue. Starts the player if it is not running.\n If the given link is a playlist will add all songs.\n\nIf no link is provided it will search for the given words on youtube")]
#[usage("$link")]
#[example("https://www.youtube.com/watch?v=dQw4w9WgXcQ")]
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

		if is_link(query.as_str()) {
			for track in &query_information.tracks {
				log::trace!("Queueing track {:?}", track);
				if let Err(why) = add_link_to_queue(&lava_client, guild_id, track.clone()) {
					log::error!("{}", why)
				}
			}
		} else {
			if let Err(why) = add_link_to_queue(&lava_client, guild_id, query_information.tracks[0].clone()) {
				log::error!("{}", why)
			}
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

async fn add_link_to_queue(lava_client: &LavalinkClient, guild_id: GuildId, track: Track) -> Result<(), LavalinkError> {
	lava_client.play(guild_id, track)
		.queue()
		.await?;
	Ok(())
}
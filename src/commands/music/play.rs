use serenity::framework::standard::{Args, CommandResult};
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Adds a song to the end of the queue. Starts the player if it is not running.\n If the given link is a playlist will add all songs.")]
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

		for track in &query_information.tracks {
			if let Err(why) =

			&lava_client.play(guild_id, track.clone())
				// Change this to play() if you want your own custom queue or no queue at all.
				.queue()
				.await
			{
				log::error!("An error occurred: {:?}", why);
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
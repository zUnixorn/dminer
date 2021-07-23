use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

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
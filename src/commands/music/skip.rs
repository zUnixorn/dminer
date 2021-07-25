use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Skips the currently running song")]
async fn skip(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = msg.guild_id.unwrap();

	if let Some(track) = lava_client.skip(msg.guild_id.unwrap()).await {
		if let Some(node) = lava_client.nodes().await.get(guild_id.as_u64()) {
			if node.queue.len() == 0 {
				lava_client.stop(guild_id).await?;
			}
		}
		log::debug!("Skipped: {}", track.track.info.as_ref().unwrap().title);
		msg.channel_id
			.say(
				ctx,
				format!("Skipped: {}", track.track.info.as_ref().unwrap().title),
			)
			.await?;
	}


	Ok(())
}
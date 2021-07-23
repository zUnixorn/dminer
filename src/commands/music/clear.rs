use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

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
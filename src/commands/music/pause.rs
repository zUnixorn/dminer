use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Toggles the current pause status of the player.")]
async fn pause(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());
	if let Some(node) = lava_client.nodes().await.get(&guild_id) {
		lava_client.set_pause(guild_id, !node.is_paused).await?;

		if node.is_paused {
			msg.channel_id.say(&ctx.http, "Paused player").await?;
		} else {
			msg.channel_id.say(&ctx.http, "Unpaused player").await?;
		}
	} else {
		msg.channel_id.say(&ctx.http, "Not in a channel, you can let me join with the join command").await?;
	}


	Ok(())
}
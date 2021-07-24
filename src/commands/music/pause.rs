use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Pauses the player. Still pauses if no song is currently running.")]
async fn pause(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());

	lava_client.pause(guild_id).await?;
	msg.channel_id.say(&ctx.http, "Paused player").await?;

	Ok(())
}
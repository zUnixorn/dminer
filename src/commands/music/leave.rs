use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

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

		//Clean up the player, event loops and data on leave
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
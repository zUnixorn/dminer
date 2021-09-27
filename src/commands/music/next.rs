use serenity::framework::standard::{Args, CommandResult};
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Moves a track to the beginning of the queue")]
#[usage("$index")]
async fn next(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();

	if let Some(mut node) = lava_client.nodes().await.get_mut(msg.guild_id.unwrap().as_u64()) {
		let queue = &mut node.queue;
		if let Ok(index) = args.single::<usize>() {
			if index > queue.len() || index < 1 {
				msg.channel_id.say(&ctx.http, "Invalid queue index").await?;
			} else {
				let to_move = queue.remove(index);
				queue.insert(1, to_move);
				msg.channel_id.say(
					&ctx.http,
					format!("Moved track `{}` to the beginning of the queue", queue[1].track.info.as_ref().unwrap().title),
				).await?;
			}
		}
	}


	Ok(())
}
use serenity::framework::standard::{Args, CommandResult};
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[num_args(1)]
#[description("Removes a song from the queue.\nIt is recommended to first use the queue command to view the queued songs and their indexes.")]
#[usage("$queue_index")]
#[example("7")]
#[example("4")]
async fn remove(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();

	if let Some(mut node) = lava_client.nodes().await.get_mut(msg.guild_id.unwrap().as_u64()) {
		let queue = &mut node.queue;
		if let Ok(index) = args.single::<usize>() {
			if index > queue.len() || index < 1 {
				msg.channel_id.say(&ctx.http, "Invalid queue index").await?;
			} else {
				let removed_track = queue.remove(index);
				msg.channel_id.say(
					&ctx.http,
					format!("Removed track `{}` from the queue", removed_track.track.info.unwrap().title),
				).await?;
			}
		}
	}


	Ok(())
}

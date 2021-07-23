use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;
use crate::commands::music::util::format_millis;

#[command]
async fn info(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();

	if let Some(node) = lava_client.nodes().await.get(&msg.guild_id.unwrap().0) {
		if let Some(track) = &node.now_playing {
			msg.channel_id.send_message(
				&ctx.http,
				|message| {
					message.embed(|embed| {
						embed.field("Title: ", &track.track.info.as_ref().unwrap().title, false)
							.field("Link: ", &track.track.info.as_ref().unwrap().uri, false)
							.field("Duration: ", format_millis(track.track.info.as_ref().unwrap().length), false)
					}
					)
				},
			)
				.await?;
		} else {
			msg.channel_id
				.say(&ctx.http, "Nothing is playing at the moment.")
				.await?;
		}
	} else {
		msg.channel_id
			.say(&ctx.http, "Nothing is playing at the moment.")
			.await?;
	}
	Ok(())
}
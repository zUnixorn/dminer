use std::cmp::max;

use serenity::{
	framework::{
		standard::{
			Args, CommandResult,
			macros::command,
		},
	},
	model::{channel::Message},
};
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Displays the songs that are currently queued, split up into pages of 15 songs per page.")]
#[usage("$page")]
#[example("")]
#[example("2")]
async fn queue(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());

	let page = if args.len() < 1 {
		1
	} else {
		let page_number = args.single::<usize>()?;
		max(page_number, 1)
	};


	let mut page_content = String::new();
	if let Some(node) = lava_client.nodes().await.get(&guild_id) {
		let queue = &node.queue;
		if queue.len() > 1 {
			for i in ((15 * (page - 1)) + 1)..((15 * page) + 1) { //Iterate over the vector in slices of 15 elements
				if i >= queue.len() { break; } //Stop the loop at the end of the Vector
				page_content.push_str(&format!("{} . {}\n", i, queue[i].track.info.as_ref().unwrap().title))
			}
			page_content.push_str(&format!("\n\nPage {} of {}", page, (((queue.len() - 1) as f64) / 15.0).ceil()))
		} else {
			page_content = "Queue is empty".to_string();
		}
	};

	msg.channel_id.send_message(&ctx.http, |msg| {
		msg.embed(|embed| {
			embed.description(page_content)
		})
	}).await?;


	Ok(())
}
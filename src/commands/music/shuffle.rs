use rand::{Rng, SeedableRng};
use serenity::framework::standard::CommandResult;
use serenity::framework::standard::macros::command;
use serenity::model::prelude::Message;
use serenity::prelude::Context;

use crate::commands::music::handlers::Lavalink;

#[command]
#[aliases("randomize")]
#[description("Randomizes the order of the songs in the queue")]
async fn shuffle(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let lava_client = data.get::<Lavalink>().unwrap().clone();
	let guild_id = u64::from(msg.guild_id.unwrap());
	if let Some(mut node) = lava_client.nodes().await.get_mut(&guild_id) {
		let mut rng = rand::rngs::StdRng::from_entropy();

		for i in 1..node.queue.len() {
			let random_song_index = rng.gen_range(1..node.queue.len() as i64) as usize;
			node.queue.swap(i, random_song_index);
			log::trace!("Swapped {} with track {}", i, random_song_index);
		}
	}

	msg.channel_id.say(
		&ctx.http,
		"Shuffled queue",
	).await?;

	Ok(())
}
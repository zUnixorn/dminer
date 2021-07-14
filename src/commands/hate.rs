use std::fs::File;

use serenity::framework::standard::{CommandResult, macros::command};
use serenity::model::prelude::Message;
use serenity::prelude::{Context, TypeMapKey};
use rand::{SeedableRng, Rng};
use std::fmt::{Display, Formatter};
use serde::Deserialize;
use serde::Serialize;

#[command]
#[description("Gives you a nice message by linus torvalds :)")]
async fn hate(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let messages = data.get::<HateMessageTypeMap>().unwrap();

	let mut rng = rand::rngs::StdRng::from_entropy();
	let random_number = rng.gen_range(0..messages.len() as i64) as usize;

	msg.channel_id.say(&ctx.http,&messages[random_number]).await?;

	Ok(())
}


#[derive(Serialize, Deserialize)]
pub struct HateMessage {
	text: String,
	hate: f64,
}

pub struct HateMessageTypeMap;

impl TypeMapKey for HateMessageTypeMap {
	type Value = Vec<HateMessage>;
}

impl Display for HateMessage {
	fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
		write!(f, "\"{}\"\n**Hatelevel**: {}", self.text, self.hate)
	}
}


pub async fn load_hate_messages(path_to_hate_file: &str) -> Vec<HateMessage> {
	let file = File::open(path_to_hate_file).expect("Hate json not found");
	let hate_messages: Vec<HateMessage> = serde_json::from_reader(file).expect("Error parsing hate json");


	hate_messages
}
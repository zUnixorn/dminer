mod handler;
mod user_db;
mod activity_db;
mod message_db;
mod database_manager;

use std::env;
use tokio;
use serenity::{
	prelude::*,
};
use crate::handler::Handler;


#[tokio::main]
async fn main() {
	let token = env::var("DISCORD_TOKEN").expect("Expected a token in the environment");

	let mut client = Client::builder(&token)
			.event_handler(Handler)
			.await
			.expect("Err creating client");

	if let Err(why) = client.start().await {
		println!("Client error: {:?}", why);
	}
}

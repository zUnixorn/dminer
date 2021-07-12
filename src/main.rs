mod handler;
mod user_db;
mod activity_db;
mod message_db;
mod connection_pool;

use std::env;
use tokio;
use serenity::{
	prelude::*,
};
use crate::handler::Handler;
use sqlx::PgPool;
use sqlx::postgres::PgPoolOptions;
use connection_pool::connection_pool::ConnectionPool;


#[tokio::main]
async fn main() {
	let token = env::var("DISCORD_TOKEN").expect("Expected a token in the environment");

	let connection_pool = PgPoolOptions::new()
		.max_connections(5)
		//.idle_timeout(600)
		.connect("postgres://dminer:dminer@localhost/dminer_data")
		.await
		.expect("Error while connecting");

	let mut client = Client::builder(&token)
			.event_handler(Handler)
			.await
			.expect("Err creating client");

	client.data.write().await.insert::<ConnectionPool>(connection_pool);

	if let Err(why) = client.start().await {
		println!("Client error: {:?}", why);
	}
}

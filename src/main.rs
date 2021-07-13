use std::env;

use dotenv::dotenv;
use serenity::{
	prelude::*,
};
use sqlx::postgres::PgPoolOptions;
use tokio;

use connection_pool::ConnectionPool;

use crate::handler::Handler;

mod handler;
mod user_db;
mod activity_db;
mod message_db;
mod connection_pool;

#[tokio::main]
async fn main() {
	dotenv().ok();

	let token = env::var("DISCORD_TOKEN").expect("Expected a token in the environment");

	let connection_pool = PgPoolOptions::new()
		.max_connections(5)
		//.idle_timeout(600)
		.connect(&env::var("DATABASE_URL").expect("Database URL Environment Variable missing")[..])
		.await
		.expect("Error while connecting to database");

	let mut client = Client::builder(&token)
		.event_handler(Handler)
		.await
		.expect("Err creating client");

	client.data.write().await
		.insert::<ConnectionPool>(connection_pool);

	if let Err(why) = client.start().await {
		println!("Client error: {:?}", why);
	}
}

#![allow(
clippy::wildcard_imports,
clippy::module_name_repetitions,
clippy::non_ascii_literal,
clippy::let_underscore_drop,
)]

use std::collections::HashSet;
use std::sync::Arc;

use log::LevelFilter;
use serenity::{
	prelude::*,
};
use serenity::{
	client::bridge::gateway::ShardManager,
	framework::standard::{
		buckets::LimitedFor,
		StandardFramework,
	},
	http::Http,
};
use serenity::client::bridge::gateway::GatewayIntents;
use simple_logger::SimpleLogger;

#[cfg(feature = "music")]
use {
	crate::commands::music::handlers::{Lavalink, LavalinkHandler},
	lavalink_rs::LavalinkClient,
	songbird::SerenityInit,
};
use commands::*;
use help::*;
use message_processing::*;

use crate::commands::hate::HateMessage;
use crate::config::ConfigData;
use crate::custom_event_handlers::Handler;

mod custom_event_handlers;
mod commands;
mod message_processing;
mod help;
mod config;


struct ShardManagerContainer;

impl TypeMapKey for ShardManagerContainer {
	type Value = Arc<Mutex<ShardManager>>;
}

#[tokio::main]
async fn main() {
	SimpleLogger::new()
		.with_level(LevelFilter::Error)
		.with_module_level("ledermann", LevelFilter::Debug)
		.init()
		.unwrap();

	let config_data = config::read_config();

	let http = Http::new_with_token(&config_data.general.token);

	let (owners, bot_id) = match http.get_current_application_info().await {
		Ok(info) => {
			let mut owners = HashSet::new();
			if let Some(team) = info.team {
				owners.insert(team.owner_user_id);
			} else {
				owners.insert(info.owner.id);
			}
			match http.get_current_user().await {
				Ok(bot_id) => (owners, bot_id.id),
				Err(why) => panic!("Could not access the bot id: {:?}", why),
			}
		}
		Err(why) => panic!("Could not access application info: {:?}", why),
	};

	let prefix = &config_data.general.prefix;

	let framework = StandardFramework::new()
		.configure(|c| c
			.with_whitespace(true)
			.on_mention(Some(bot_id))
			.prefix(prefix)
			// In this case, if "," would be first, a message would never
			// be delimited at ", ", forcing you to trim your arguments if you
			// want to avoid whitespaces at the start of each.
			.delimiters(vec![", ", ",", " "])
			// Sets the bot's owners. These will be used for commands that
			// are owners only.
			.owners(owners)
		)

		// Set a function to be called prior to each command execution. This
		// provides the context of the command, the message that was received,
		// and the full name of the command that will be called.
		//
		// Avoid using this to determine whether a specific command should be
		// executed. Instead, prefer using the `#[check]` macro which
		// gives you this functionality.
		//
		// **Note**: Async closures are unstable, you may use them in your
		// application if you are fine using nightly Rust.
		// If not, we need to provide the function identifiers to the
		// hook-functions (before, after, normal, ...).
		.before(before)
		// Similar to `before`, except will be called directly _after_
		// command execution.
		.after(after)
		// Set a function that's called whenever an attempted command-call's
		// command could not be found.
		.unrecognised_command(unknown_command)
		// Set a function that's called whenever a message is not a command.
		.normal_message(normal_message)
		// Set a function that's called whenever a command's execution didn't complete for one
		// reason or another. For example, when a user has exceeded a rate-limit or a command
		// can only be performed by the bot owner.
		.on_dispatch_error(dispatch_error)
		// Can't be used more than once per 5 seconds:
		//.bucket("emoji", |b| b.delay(5)).await
		// Can't be used more than 2 times per 30 seconds, with a 5 second delay applying per channel.
		// Optionally `await_ratelimits` will delay until the command can be executed instead of
		// cancelling the command invocation.
		.bucket("complicated", |b| b.limit(2).time_span(30).delay(5)
			// The target each bucket will apply to.
			.limit_for(LimitedFor::Channel)
			// The maximum amount of command invocations that can be delayed per target.
			// Setting this to 0 (default) will never await/delay commands and cancel the invocation.
			.await_ratelimits(1)
			// A function to call when a rate limit leads to a delay.
			.delay_action(message_processing::delay_action)).await
		// The `#[group]` macro generates `static` instances of the options set for the group.
		// They're made in the pattern: `#name_GROUP` for the group instance and `#name_GROUP_OPTIONS`.
		// #name is turned all uppercase
		.help(&MY_HELP)
		.group(&GENERAL_GROUP)
		.group(&MATH_GROUP);

	#[cfg(feature = "music")]
		let framework = framework.group(&MUSIC_GROUP);

	let client = Client::builder(&config_data.general.token)
		.event_handler(Handler)
		.framework(framework)
		.intents(GatewayIntents::all()); //change to only require the intents we actually want

	#[cfg(feature = "music")]
		let client = client.register_songbird();

	let mut client = client.await.expect("Error creating client");

	#[cfg(feature = "music")]
		{
			log::info!("Music feature active");
			let lavalink_password = &config_data
				.music
				.as_ref()
				.expect("Lavalink password missing from config")
				.lavalink_password;

			let lava_client = match LavalinkClient::builder(bot_id)
				.set_host("127.0.0.1")
				.set_password(lavalink_password)
				.build(LavalinkHandler)
				.await {
				Ok(client) => client,
				Err(why) => panic!("Error with lavalink client: {:?}", why)
			};

			{
				let mut data = client.data.write().await;
				data.insert::<Lavalink>(lava_client);
			}
		}

	{
		let mut data = client.data.write().await;
		let hate_messages = hate::load_hate_messages("./hate.json");
		data.insert::<ShardManagerContainer>(Arc::clone(&client.shard_manager));
		data.insert::<HateMessage>(hate_messages);
		data.insert::<ConfigData>(config_data);
	}

	if let Err(why) = client.start().await {
		log::error!("Client error: {:?}", why);
	}
}
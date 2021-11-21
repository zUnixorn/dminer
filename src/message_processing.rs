use serenity::{
	prelude::*,
};
use serenity::{
	framework::standard::{
		CommandResult,
		DispatchError,
		macros::{group, hook},
	},
	model::{
		channel::Message,
	},
};

use crate::commands::{hate::*, meta::*};

#[cfg(feature = "math")]
use crate::commands::math::*;

#[cfg(feature = "music")]
use crate::music::{
	clear::*,
	info::*,
	join::*,
	leave::*,
	pause::*,
	play_insert::*,
	queue::*,
	remove::*,
	resume::*,
	shuffle::*,
	skip::*,
	youtube_search::*,
	next::*,
};

#[group]
#[commands(ping, latency, hate, shill, invite)]
pub struct General;

#[cfg(feature = "math")]
#[group]
#[prefix = "math"]
#[commands(eval)]
struct Math;

#[cfg(feature = "music")]
#[group]
#[only_in(guilds)]
#[commands(join, leave, play, skip, info, queue, clear, pause, unpause, remove, shuffle, youtube_search, insert, next)]
pub struct Music;

#[hook]
pub async fn before(_ctx: &Context, msg: &Message, command_name: &str) -> bool {
	log::info!("Got command '{}' by user '{}'", command_name, msg.author.name);

	true // if `before` returns false, command processing doesn't happen.
}

#[hook]
pub async fn after(_ctx: &Context, _msg: &Message, command_name: &str, command_result: CommandResult) {
	match command_result {
		Ok(()) => log::info!("Processed command '{}'", command_name),
		Err(why) => log::error!("Command returned an error: {:?}", why),
	}
}

#[hook]
pub async fn unknown_command(ctx: &Context, msg: &Message, unknown_command_name: &str) {
	log::debug!("Could not find command named '{}'\n(Message content: \"{}\")", unknown_command_name, msg.content);
	let reply = msg.channel_id.say(&ctx.http,
								   format!("Sorry, couldn't find a command named '`{}`'\n\n With the `help` command you can list all available commands", unknown_command_name),
	).await;

	if let Err(why) = reply {
		log::error!("Error replying to unknown command: {:?}", why);
	}
}

#[hook]
pub async fn normal_message(_ctx: &Context, msg: &Message) {
	log::info!("Processed non Command message: '{}'", msg.content)
}

#[hook]
pub async fn dispatch_error(ctx: &Context, msg: &Message, error: DispatchError) {
	if let DispatchError::Ratelimited(info) = error {
		// We notify them only once.
		if info.is_first_try {
			let _ = msg
				.channel_id
				.say(&ctx.http, &format!("Try this again in {} seconds.", info.as_secs()))
				.await;
		}
	}
}

#[hook]
pub async fn delay_action(ctx: &Context, msg: &Message) {
	// You may want to handle a Discord rate limit if this fails.
	let _ = msg.react(ctx, '⏱').await;
}
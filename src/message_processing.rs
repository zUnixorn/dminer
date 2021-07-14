use std::collections::HashSet;

use serenity::{
	prelude::*,
};
use serenity::{
	framework::standard::{
		Args,
		CommandGroup,
		CommandResult,
		DispatchError,
		help_commands,
		HelpOptions,
		macros::{group, help, hook},
	},
	model::{
		channel::Message,
		id::UserId,
	},
};

use crate::commands::meta::*;

#[group]
#[commands(ping, latency)]
pub struct General;


#[hook]
pub async fn before(_ctx: &Context, msg: &Message, command_name: &str) -> bool {
	println!("Got message '{}' by user '{}'", command_name, msg.author.name);

	true // if `before` returns false, command processing doesn't happen.
}

#[hook]
pub async fn after(_ctx: &Context, _msg: &Message, command_name: &str, command_result: CommandResult) {
	match command_result {
		Ok(()) => println!("Processed command '{}'", command_name),
		Err(why) => println!("Command '{}' returned error {:?}", command_name, why),
	}
}

#[hook]
pub async fn unknown_command(_ctx: &Context, msg: &Message, unknown_command_name: &str) {
	println!("Could not find command named '{}'\n(Message content: \"{}\")", unknown_command_name, msg.content);
}

#[hook]
pub async fn normal_message(_ctx: &Context, msg: &Message) {
	println!("Processed non Command message: '{}'", msg.content);
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
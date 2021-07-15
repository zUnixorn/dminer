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

use crate::commands::{math::*, hate::*, meta::*};

#[group]
#[commands(ping, latency, hate)]
pub struct General;

#[group]
#[prefix = "math"]
#[commands(eval)]
struct Math;

#[hook]
pub async fn before(_ctx: &Context, msg: &Message, command_name: &str) -> bool {
	println!("Got command '{}' by user '{}'", command_name, msg.author.name);

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
pub async fn unknown_command(ctx: &Context, msg: &Message, unknown_command_name: &str) {
	println!("Could not find command named '{}'\n(Message content: \"{}\")", unknown_command_name, msg.content);
	let reply = msg.channel_id.say(&ctx.http,
					   format!("Sorry, couldn't find a command named '`{}`'\n\n With the `help` command you can list all available commands", unknown_command_name)
	).await;

	if let Err(why) = reply {
		println!("Error replying to unknown command: {:?}", why)
	}
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
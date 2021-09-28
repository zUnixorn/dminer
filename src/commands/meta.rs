use std::time::Duration;

use serenity::client::bridge::gateway::ShardId;
use serenity::framework::standard::{CommandResult, macros::command};
use serenity::model::prelude::*;
use serenity::prelude::*;

use crate::config::ConfigData;
use crate::ShardManagerContainer;

#[command]
#[description("Replies with \"Pong!\"")]
pub async fn ping(ctx: &Context, msg: &Message) -> CommandResult {
	msg.reply(&ctx.http, "Pong!").await?;

	Ok(())
}

#[command]
#[description("Gives a link to invite the bot")]
pub async fn invite(ctx: &Context, msg: &Message) -> CommandResult {
	let data = ctx.data.read().await;
	let config_data = data.get::<ConfigData>().unwrap();
	let invite_url = &config_data.general.invite_url;

	msg.channel_id.send_message(&ctx.http, |message| {
		message.embed(|embed| {
			embed.title("Let me join your server :)");
			embed.url(invite_url);
			embed
		})
	}).await?;


	Ok(())
}

#[command]
#[description("Replies with the current latency the bot has to discord.\nMay not be 100% accurate or up to date")]
async fn latency(ctx: &Context, msg: &Message) -> CommandResult {
	// The shard manager is an interface for mutating, stopping, restarting, and
	// retrieving information about shards.
	let data = ctx.data.read().await;

	let shard_manager = if let Some(sm) = data.get::<ShardManagerContainer>() {
		sm
	} else {
		msg.reply(&ctx.http, "There was a problem getting the shard manager").await?;
		log::error!("There was a problem getting the shard manager container");

		return Ok(());
	};

	let manager = shard_manager.lock().await;
	let runners = manager.runners.lock().await;

	// Shards are backed by a "shard runner" responsible for processing events
	// over the shard, so we'll get the information about the shard runner for
	// the shard this command was sent over.
	let runner = if let Some(runner) = runners.get(&ShardId(ctx.shard_id)) {
		runner
	} else {
		msg.reply(&ctx.http, "No shard found").await?;
		log::error!("No shard found");

		return Ok(());
	};

	msg.reply(ctx, &format!(
		"The shard latency is {:?}",
		runner.latency.unwrap_or_else(|| Duration::from_secs(u64::MAX))),
	).await?;

	Ok(())
}

#[command]
#[aliases("durr", "deeb", "deer")]
#[description("Shills the bot of a friend.")]
async fn shill(ctx: &Context, msg: &Message) -> CommandResult {
	let file_paths = vec!["assets/deerbot-pfp.png"];

	msg.channel_id.send_files(&ctx.http, file_paths, |message| {
		message.embed(|embed| {
			embed.field("I am definitely not being held at gunpoint right now, why don't you \
				 check out the deer bot that does some deer things:",
						"[click here!](https://f.ls/deerbot)", true);
			embed.thumbnail("attachment://deerbot-pfp.png");
			embed
		})
	},
	).await?;

	Ok(())
}
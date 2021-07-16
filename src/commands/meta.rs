use std::time::Duration;

use serenity::client::bridge::gateway::ShardId;
use serenity::framework::standard::{CommandResult, macros::command};
use serenity::model::prelude::*;
use serenity::prelude::*;

use crate::ShardManagerContainer;

#[command]
#[description("Replies with \"Pong!\"")]
pub async fn ping(ctx: &Context, msg: &Message) -> CommandResult {
	msg.reply(&ctx.http, "Pong!").await?;

	Ok(())
}

#[command]
#[description("Replies with the current latency the bot has to discord.\nMay not be 100% accurate or up to date")]
async fn latency(ctx: &Context, msg: &Message) -> CommandResult {
	// The shard manager is an interface for mutating, stopping, restarting, and
	// retrieving information about shards.
	let data = ctx.data.read().await;

	let shard_manager = match data.get::<ShardManagerContainer>() {
		Some(v) => v,
		None => {
			msg.reply(ctx, "There was a problem getting the shard manager").await?;

			return Ok(());
		}
	};

	let manager = shard_manager.lock().await;
	let runners = manager.runners.lock().await;

	// Shards are backed by a "shard runner" responsible for processing events
	// over the shard, so we'll get the information about the shard runner for
	// the shard this command was sent over.
	let runner = match runners.get(&ShardId(ctx.shard_id)) {
		Some(runner) => runner,
		None => {
			msg.reply(ctx, "No shard found").await?;

			return Ok(());
		}
	};

	msg.reply(ctx, &format!("The shard latency is {:?}", runner.latency.unwrap_or(Duration::from_secs(u64::MAX)))).await?;

	Ok(())
}

#[command]
#[aliases("durr", "deeb", "shill")]
async fn deer(ctx: &Context, msg: &Message) -> CommandResult {
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
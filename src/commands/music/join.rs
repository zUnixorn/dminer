use serenity::{
	framework::{
		standard::{
			CommandResult,
			macros::command,
		},
	},
	model::{channel::Message},
};
use serenity::prelude::{Context, Mentionable};

use crate::commands::music::handlers::Lavalink;

#[command]
#[description("Lets the bot join into your voice channel.")]
async fn join(ctx: &Context, msg: &Message) -> CommandResult {
	let guild = msg.guild(&ctx.cache).await.unwrap();
	let guild_id = guild.id;

	let channel_id = guild
		.voice_states
		.get(&msg.author.id)
		.and_then(|voice_state| voice_state.channel_id);

	let connect_to = match channel_id {
		Some(channel) => channel,
		None => {
			msg.reply(ctx, "Please join a Voice channel before asking me to join.").await?;

			return Ok(());
		}
	};

	let manager = songbird::get(ctx).await.unwrap().clone();

	let (_, handler) = manager.join_gateway(guild_id, connect_to).await;

	match handler {
		Ok(connection_info) => {
			let data = ctx.data.read().await;
			let lava_client = data.get::<Lavalink>().unwrap().clone();
			lava_client.create_session(&connection_info).await?;

			msg.channel_id
				.say(&ctx.http, &format!("Joined {}", connect_to.mention()))
				.await?;
		}
		Err(why) => {
			msg.channel_id
				.say(&ctx.http, format!("Error joining the channel: {}", why))
				.await?;
		}
	}

	Ok(())
}

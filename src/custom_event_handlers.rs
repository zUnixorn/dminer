use serenity::{
	async_trait,
	model::gateway::Ready,
	prelude::*,
};
use serenity::model::prelude::Guild;

pub struct Handler;

#[async_trait]
impl EventHandler for Handler {
	async fn guild_create(
		&self,
		_ctx: Context,
		guild: Guild,
		is_new: bool,
	) {
		if is_new {
			log::info!("Got invited into a new guild with name '{}' and id '{}'", guild.name, guild.id,)
		}
	}

	async fn ready(
		&self,
		_ctx: Context,
		data_about_bot: Ready,
	) {
		log::info!("{} está aqui!", data_about_bot.user.name)
	}
}
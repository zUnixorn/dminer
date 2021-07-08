use serenity::{
	async_trait,
	model::{gateway::Ready, event::PresenceUpdateEvent, channel::Message},
	prelude::*,
};
use serenity::model::id::{ChannelId, MessageId, GuildId};
use serenity::model::event::MessageUpdateEvent;

pub struct Handler;

#[async_trait]
impl EventHandler for Handler {
	async fn message(&self, _ctx: Context, message: Message) {
		println!("Message by: {} with content: {}", message.author.name, message.content)
	}

	async fn message_delete(
		&self,
		_ctx: Context,
		_channel_id: ChannelId,
		_deleted_message_id: MessageId,
		_guild_id: Option<GuildId>
	) {
		println!("Message with id {} was deleted", _deleted_message_id)
	}

	async fn message_update(
		&self,
		_ctx: Context,
		_old_if_available: Option<Message>,
		_new: Option<Message>,
		_event: MessageUpdateEvent
	) {

	}

	async fn presence_update(&self, _ctx: Context, presence: PresenceUpdateEvent) {
		let _presence = presence.presence;
	}

	async fn ready(&self, _ctx: Context, ready: Ready) {
		println!("{} is connected!", ready.user.name);
	}
}
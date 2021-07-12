use serenity::{
	async_trait,
	model::{gateway::Ready, event::PresenceUpdateEvent, channel::Message},
	prelude::*,
};
use serenity::model::id::{ChannelId, MessageId, GuildId};
use serenity::model::event::MessageUpdateEvent;

use crate::message_db::MessageDb;
use crate::activity_db::ActivityDb;
use crate::connection_pool::ConnectionPool;

pub struct Handler;

#[async_trait]
impl EventHandler for Handler {
	async fn message(&self, ctx: Context, message: Message) {
		println!("Message by: {} with content: {}", message.author.name, message.content);
		let msg = MessageDb::from_message(message);
		msg.write_to_db(ctx
							.data
							.read()
							.await
							.get::<ConnectionPool>()
							.unwrap() //if it's not there the world is burning anyways
		).await;
	}

	async fn message_delete(
		&self,
		ctx: Context,
		_channel_id: ChannelId,
		deleted_message_id: MessageId,
		_guild_id: Option<GuildId>,
	) {
		println!("Message with id {} was deleted", deleted_message_id);
		MessageDb::mark_deleted(i64::from(deleted_message_id),
								ctx
									.data
									.read()
									.await
									.get::<ConnectionPool>()
									.unwrap()).await;
	}

	async fn message_delete_bulk(
		&self,
		ctx: Context,
		_channel_id: ChannelId,
		multiple_deleted_messages_ids: Vec<MessageId>,
		_guild_id: Option<GuildId>,
	) {

		println!("Bulk delete incoming:\n{:?}", multiple_deleted_messages_ids);

		for deleted_message_id in multiple_deleted_messages_ids {
			println!("Message with id {} was deleted", deleted_message_id);
			MessageDb::mark_deleted(
				i64::from(deleted_message_id),
				ctx
					.data
					.read()
					.await
					.get::<ConnectionPool>()
					.unwrap(),
			).await;
		}
	}

	async fn message_update(
		&self,
		ctx: Context,
		_old_if_available: Option<Message>,
		new: Option<Message>,
		_event: MessageUpdateEvent,
	) {
		if let Some(message) = new {}
	}

	async fn presence_update(
		&self, ctx: Context,
		new_data: PresenceUpdateEvent,
	) {
		println!("Presence update from: {}", new_data.presence.user.as_ref().unwrap().name);

		let presence = new_data.presence;

		let connection_pool = ctx
			.data
			.read()
			.await
			.get::<ConnectionPool>()
			.unwrap(); //if it's not there the world is burning anyways
	}

	async fn ready(
		&self,
		_ctx: Context,
		data_about_bot: Ready,
	) {
		println!("{} está aqui!", data_about_bot.user.name);
	}
}
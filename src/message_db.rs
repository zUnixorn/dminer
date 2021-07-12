pub mod message_db {
	use serenity::model::channel::Message;
	use std::fmt::{Display, Formatter};
	use sqlx::PgPool;

	pub struct MessageDb {
		message_id: u64,
		author: u64,
		channel_id: u64,
		guild_id: Option<u64>,
		content: String,
		deleted: bool
	}

	impl MessageDb {
		pub fn from_message(message: Message) -> MessageDb {
			let id = if let Some(guild_id) = message.guild_id {
				Some(u64::from(guild_id))
			} else {
				Option::None
			};
			MessageDb {
				message_id: u64::from(message.id),
				author: u64::from(message.author.id),
				channel_id: message.channel_id.0,
				guild_id: id,
				content: message.content,
				deleted: false
			}
		}
	}



	impl Display for MessageDb {
		fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
			let guild_id = match self.guild_id {
				None => 0,
				Some(id) => id,
			};

			write!(f,
				   "m{{ message_id: {}, author: {}, channel_id: {}, guild_id: {}, content: {} }}",
				   self.message_id,
				   self.author,
				   self.channel_id,
				   guild_id,
				   self.content
			)
		}
	}
}


use serenity::model::channel::Message;
use std::fmt::{Display, Formatter};
use sqlx::{PgPool, Executor};

pub struct MessageDb {
	message_id: i64,
	author: i64,
	channel_id: i64,
	guild_id: Option<i64>,
	content: String,
	deleted: bool,
}

impl MessageDb {
	pub fn from_message(message: Message) -> MessageDb {
		let id = message.guild_id.map(|guild_id| i64::from(guild_id));
		MessageDb {
			message_id: i64::from(message.id),
			author: i64::from(message.author.id),
			channel_id: message.channel_id.0 as i64,
			guild_id: id,
			content: message.content,
			deleted: false,
		}
	}

	pub async fn write_to_db(&self, connection_pool: &PgPool) {
		let query = sqlx::query(
			"INSERT INTO messages (message_id, author, channel_id, guild_id, content, deleted)\
				VALUES (?, ?, ?, ?, ?, ?)")
			.bind(self.message_id)
			.bind(self.author)
			.bind(self.channel_id)
			.bind(self.guild_id)
			.bind(&self.content)
			.bind(self.deleted);
		let result = query.execute(connection_pool).await;
		println!("binted")
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
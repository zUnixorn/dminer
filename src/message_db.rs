use std::fmt::{Display, Formatter};

struct MessageDB {
	message_id: u64,
	author: u64,
	channel_id: u64,
	guild_id: Option<u64>,
	content: String
}

impl Display for MessageDB {
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
struct Messages {
	author: i64,
	message_id: i64,
	channel_id: Option<i64>,
	guild_id: Option<i64>,
	content: String,
}
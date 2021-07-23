use std::sync::Arc;

use chrono::Duration;
use lavalink_rs::model::Node;
use serenity::http::Http;
use serenity::model::prelude::ChannelId;
use serenity::prelude::TypeMapKey;

pub struct CallerChannel {
	pub(crate) channel_id: ChannelId,
	pub(crate) http: Arc<Http>,
}

impl TypeMapKey for CallerChannel {
	type Value = CallerChannel;
}

pub async fn set_caller_channel(node: &Node, http: Arc<Http>, channel_id: ChannelId) {
	let mut typemap = node.data.write().await;
	let caller_channel = CallerChannel {
		http,
		channel_id,
	};
	typemap.insert::<CallerChannel>(caller_channel);
}

pub fn format_millis(millis: u64) -> String {
	let duration = Duration::milliseconds(millis as i64);
	format!("{:02}:{:02}:{:02}", duration.num_hours(), duration.num_minutes() % 60, duration.num_seconds() % 60)
}
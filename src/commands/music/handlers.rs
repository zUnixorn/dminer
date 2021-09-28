use std::sync::Arc;

use lavalink_rs::gateway::LavalinkEventHandler;
use lavalink_rs::LavalinkClient;
use lavalink_rs::model::{TrackFinish, TrackStart};
use serenity::async_trait;
use serenity::http::Http;
use serenity::model::prelude::ChannelId;
use serenity::prelude::TypeMapKey;
use songbird::{
	Event,
	EventContext,
	EventHandler as VoiceEventHandler,
};

use crate::commands::music::util::CallerChannel;

#[async_trait]
impl LavalinkEventHandler for LavalinkHandler {
	async fn track_start(&self, client: LavalinkClient, event: TrackStart) {
		//Use the data inside the Node Struct to store a Channel ID in the data Typemap field
		if let Some(node) = client.nodes().await.get(&event.guild_id) {
			if let Some(current_track) = &node.now_playing {
				let typemap = node.data.read().await;
				let caller_channel = typemap.get::<CallerChannel>().unwrap();
				let _ = caller_channel.channel_id.send_message(&caller_channel.http, |message| {
					message.embed(|embed| {
						embed.title("**Now playing**");
						embed.description(format!("{}", current_track.track.info.as_ref().unwrap().title));
						embed
					})
				},
				).await;
			}
		}
		log::info!("A track in guild {} was started!", event.guild_id);
	}
	async fn track_finish(&self, _client: LavalinkClient, event: TrackFinish) {
		log::info!("Track in guild {} finished with reason {}", event.guild_id, event.reason);
	}
}

pub struct TrackEndNotifier {
	channel_id: ChannelId,
	http: Arc<Http>,
}

pub struct Lavalink;

impl TypeMapKey for Lavalink {
	type Value = LavalinkClient;
}

pub(crate) struct LavalinkHandler;

#[async_trait]
impl VoiceEventHandler for TrackEndNotifier {
	async fn act(&self, ctx: &EventContext<'_>) -> Option<Event> {
		if let EventContext::Track(track_list) = ctx {
			let _ = self.channel_id
				.say(&self.http, &format!("Tracks ended: {}.", track_list.len()))
				.await; //TODO log err using logging framework
		}

		None
	}
}
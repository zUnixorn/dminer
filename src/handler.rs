use serenity::{
    async_trait,
    model::{gateway::Ready, event::PresenceUpdateEvent},
    prelude::*,
};

pub struct Handler;

#[async_trait]
impl EventHandler for Handler {
    async fn ready(&self, _: Context, ready: Ready) {
        println!("{} is connected!", ready.user.name);
    }

    async fn presence_update(&self, _: Context, presence: PresenceUpdateEvent) {
        let presence = presence.presence;
    }
}
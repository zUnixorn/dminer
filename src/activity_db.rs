use serenity::model::gateway::{ActivityType, Activity, ActivityAssets, ActivityTimestamps};
use serenity::model::id::ApplicationId;
use std::time::{SystemTime, UNIX_EPOCH};
use sqlx::{Postgres, Pool, query, PgPool};
use sqlx::postgres::PgQueryResult;


pub struct ActivityDb {
	user_id: u64,
	application_id: Option<u64>,
	assets: Option<String>,
	details: Option<String>,
	kind: ActivityType,
	activity_name: String,
	party: bool,
	state: Option<String>,
	start_timestamp: u64,
	end_timestamp: Option<u64>,
}

impl ActivityDb {
	pub fn from_activity(activity: Activity, user_id: u64) -> Self {
		let now = SystemTime::now()
			.duration_since(UNIX_EPOCH)
			.expect("system clock set before 01.01.1970")
			.as_secs();

		Self {
			user_id,
			application_id: activity.application_id.map(|a| a.0),
			assets: activity.assets.map(|a| a.large_image).flatten(),
			details: activity.details,
			kind: activity.kind,
			activity_name: activity.name,
			party: activity.party.is_some(),
			state: activity.state,
			start_timestamp: activity.timestamps.clone().map(|a| a.start).flatten()
				.unwrap_or(now),
			end_timestamp: activity.timestamps.map(|a| a.end).flatten(),
		}
	}

	/* to be implemented
	pub fn from_database(timestamp: u64, user_id: u64, db_manager: &'static DatabaseManger) -> Self {

	}
	*/

	pub async fn write_to_db(&self, connection_pool: &PgPool) -> Result<(), sqlx::Error> {
		sqlx::query("INSERT INTO users (user_id, username) VALUES ($1, NULL);")
			.bind(self.user_id as i64)
			.execute(connection_pool)
			.await?;

		Ok(())
	}

	pub fn update(&self) {}
}
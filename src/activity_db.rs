use serenity::model::gateway::{ActivityType, Activity};
use std::time::{SystemTime, UNIX_EPOCH};
use sqlx::PgPool;
use crate::activity_kind::ActivityKind;


pub struct ActivityDb {
	user_id: i64,
	application_id: Option<i64>,
	assets: Option<String>,
	details: Option<String>,
	kind: ActivityType,
	activity_name: String,
	party: bool,
	state: Option<String>,
	start_timestamp: i64,
	end_timestamp: Option<i64>,
}

impl ActivityDb {
	pub fn from_activity(activity: Activity, user_id: i64) -> Self {
		let now = SystemTime::now()
			.duration_since(UNIX_EPOCH)
			.expect("system clock set before 01.01.1970")
			.as_secs();

		Self {
			user_id,
			application_id: activity.application_id.map(|a| a.0 as i64),
			assets: activity.assets.map(|a| a.large_image).flatten(),
			details: activity.details,
			kind: activity.kind,
			activity_name: activity.name,
			party: activity.party.is_some(),
			state: activity.state,
			start_timestamp: activity.timestamps.clone().map(|a| a.start).flatten()
				.unwrap_or(now) as i64,
			end_timestamp: activity.timestamps.map(|a| a.end.map(|o| o as i64)).flatten(),
		}
	}

	/* to be implemented
	pub fn from_database(timestamp: u64, user_id: u64, db_manager: &'static DatabaseManger) -> Self {

	}
	*/

	pub async fn write_to_db(&self, connection_pool: &PgPool) -> Result<(), sqlx::Error> {
		let result = sqlx::query("insert into activities \
		(user_id, application_id, assets, details, kind, activity_name, party, state, start_timestamp, end_timestamp) values \
		($1, $2, $3, $4, $5, $6, $7, $8, $9, $10) ON CONFLICT DO NOTHING")
			.bind(self.user_id)
			.bind(self.application_id)
			.bind(&self.assets)
			.bind(&self.details)
			.bind(ActivityKind::from_activity_type(self.kind))
			.bind(&self.activity_name)
			.bind(self.party)
			.bind(&self.state)
			.bind(self.start_timestamp)
			.bind(self.end_timestamp)
			.execute(connection_pool)
			.await;

		println!("{}", if let Err(why) = result {
			format!("{}", why)
		} else {
			"no error".to_string()
		});

		Ok(())
	}

	pub fn _update(&self) {}
}
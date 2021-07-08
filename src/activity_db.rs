use serenity::model::gateway::{ActivityType, Activity, ActivityAssets, ActivityTimestamps};
use serenity::model::id::ApplicationId;
use std::time::{SystemTime, UNIX_EPOCH};

enum ActivityFields {
    UserId,
    ApplicationId,
    Assets,
    Details,
    Kind,
    ActivityName,
    Party,
    State,
    StartTimestamp,
    EndTimestamp,
}

struct ActivityDb {
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
        Self {
            user_id,
            application_id: Self::get_application_id(&activity.application_id),
            assets: Self::get_asset(&activity.assets),
            details: activity.details,
            kind: activity.kind,
            activity_name: activity.name,
            party: activity.party.is_some(),
            state: activity.state,
            start_timestamp: Self::get_timestamps(&activity.timestamps).0,
            end_timestamp: Self::get_timestamps(&activity.timestamps).1,
        }
    }

    fn get_application_id(id_wrapped: &Option<ApplicationId>) -> Option<u64> {
        if let Some(id) = id_wrapped {
            Some(id.0)
        } else {
            None
        }
    }

    fn get_asset(assets_wrapped: &Option<ActivityAssets>) -> Option<String> {
        if let Some(assets) = assets_wrapped {
            if let Some(asset) = assets.large_image.clone() {
                Some(asset)
            } else {
                None
            }
        } else {
            None
        }
    }

    fn get_timestamps(timestamps_wrapped: &Option<ActivityTimestamps>) -> (u64, Option<u64>) {
        let now_timestamp = SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .expect("system clock set before 01.01.1970")
            .as_secs();

        if let Some(timestamps) = timestamps_wrapped {
            if let Some(start_timestamp) = timestamps.start {
                (start_timestamp, timestamps.end)
            } else {
                (now_timestamp, timestamps.end)
            }
        } else {
            (now_timestamp, None)
        }
    }

    //needs a primary key / id?

    pub fn write(&self, field: ActivityFields) {

    }

    pub fn update(&self, field: ActivityFields) {

    }

    pub fn write_all(&self) {
        //Placeholder, should be replaced with one write operation
        for field in ActivityFields {
            self.write(field);
        }
    }

    pub fn update_all(&self) {
        //Placeholder, should be replaced with one write operation
        for field in ActivityFields {
            self.write(field);
        }
    }
}
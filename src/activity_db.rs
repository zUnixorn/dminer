use serenity::model::prelude::ActivityType;

struct ActivityDb {
    user_id: i64,
    application_id: i64,
    assets: String,
    details: String,
    kind: ActivityType,
    activity_name: String,
    party: bool,
    state: String,
    start_timestamp: i64,
    end_timestamp: i64,
}
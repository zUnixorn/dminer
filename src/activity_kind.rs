use serenity::model::gateway::ActivityType;

#[derive(sqlx::Type)]
#[sqlx(type_name = "activity_type")]
pub enum ActivityKind {
	Playing = 0,
	Streaming = 1,
	Listening = 2,
	Watching = 3,
	Custom = 4,
	Competing = 5,
	Unknown = !0,
}

impl ActivityKind {
	pub fn from_activity_type(activity_type: ActivityType) -> ActivityKind {
		match activity_type {
			ActivityType::Playing => ActivityKind::Playing,
			ActivityType::Streaming => ActivityKind::Streaming,
			ActivityType::Listening => ActivityKind::Listening,
			ActivityType::Watching => ActivityKind::Watching,
			ActivityType::Custom => ActivityKind::Custom,
			ActivityType::Competing => ActivityKind::Competing,
			_ => ActivityKind::Unknown,
		}
	}
}
use chrono::Duration;

pub fn format_millis(millis: u64) -> String {
	let duration = Duration::milliseconds(millis as i64);
	format!("{:02}:{:02}:{:02}", duration.num_hours(), duration.num_minutes() % 60, duration.num_seconds() % 60)
}

pub fn is_link(link: &str) -> bool {
	link.starts_with("https://")
		|| link.starts_with("http://")
}
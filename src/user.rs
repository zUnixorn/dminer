use std::fmt::{Display, Formatter};

struct User {
	user_id: i64,
	username: String
}

impl Display for User {
	fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
		write!(f, "{{ user_id: {}, username: {} }}", self.user_id, self.username)
	}
}
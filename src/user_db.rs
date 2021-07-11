use std::fmt::{Display, Formatter};

struct UserDb {
	user_id: i64,
	username: Option<String>,
}

impl Display for UserDb {
	fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
		write!(f, "{{ user_id: {}, username: {} }}", self.user_id,
			   if let Some(name) = &self.username {
				   name
			   } else {
				   "no name given"
			   }
		)
	}
}
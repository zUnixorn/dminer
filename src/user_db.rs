use std::fmt::{Display, Formatter};

use serenity::model::gateway::Presence;
use serenity::model::user::User;
use sqlx::PgPool;

pub struct UserDb {
	user_id: i64,
	username: Option<String>,
}

impl UserDb {
	pub fn from_user(user: User) -> Self {
		Self {
			user_id: i64::from(user.id),
			username: Some(user.name),
		}
	}

	pub fn from_presence(presence: Presence) -> Self {
		Self {
			user_id: i64::from(presence.user_id),
			username: presence.user.map(|o| o.name),
		}
	}

	pub async fn write_to_db(&self, connection_pool: &PgPool) -> Result<(), sqlx::Error> {
		sqlx::query(
			"INSERT INTO users VALUES ($1, $2) ON CONFLICT DO NOTHING")
			.bind(self.user_id)
			.bind(&self.username)
			.execute(connection_pool)
			.await?;

		Ok(())
	}
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
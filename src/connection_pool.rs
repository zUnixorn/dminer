pub mod connection_pool {
	use serenity::prelude::TypeMapKey;
	use sqlx::{Pool, Postgres};

	pub struct ConnectionPool;

	impl TypeMapKey for ConnectionPool {
		type Value = Pool<Postgres>;
	}
}
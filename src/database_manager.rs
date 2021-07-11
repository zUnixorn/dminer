pub mod database_manager {
	use std::vec::Vec;
	use sqlx::postgres::PgConnection;

	pub struct DatabaseManger {
		connections: Vec<PgConnection>
	}
	
	impl DatabaseManger {
		pub fn new() -> Self {
			Self {
				connections: vec![]
			}
		}
	}
}
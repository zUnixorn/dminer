use serenity::prelude::TypeMapKey;
use lavalink_rs::model::Track;


pub struct Queue {
	tracks: Vec<Track>
}

impl TypeMapKey for Queue {
	type Value = Queue;
}

impl Queue {
	pub fn next(&mut self) -> Option<Track> {
		if self.tracks.len() == 0 {
			None
		} else {
			Some(self.tracks.remove(0))
		}
	}

	pub fn add(&mut self, track: Track) {
		self.tracks.push(track)
	}

	pub fn new() -> Self {
		Queue {
			tracks: Vec::new()
		}
	}

	pub fn add_all(&mut self, tracks: &mut Vec<Track>) {
		self.tracks.append(tracks)
	}

}
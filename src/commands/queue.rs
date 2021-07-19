use serenity::prelude::TypeMapKey;
use lavalink_rs::model::Track;


pub struct Queue {
	tracks: Vec<Track>,
	currently_playing: Option<Track>,
}

impl TypeMapKey for Queue {
	type Value = Queue;
}

impl Queue {
	pub fn new() -> Self {
		Queue {
			tracks: Vec::new(),
			currently_playing: None
		}
	}

	pub fn next(&mut self) -> Option<Track> {
		if self.tracks.is_empty() {
			None
		} else {
			let next_track = self.tracks.remove(0);
			self.currently_playing = Some(next_track.clone());
			Some(next_track)
		}
	}

	pub fn add(&mut self, track: Track) {
		self.tracks.push(track)
	}

	pub fn add_all(&mut self, tracks: &mut Vec<Track>) {
		self.tracks.append(tracks)
	}

	pub fn is_empty(&self) -> bool {
		self.tracks.is_empty()
	}

	pub fn get_playing(&self) -> &Option<Track> {
		&self.currently_playing
	}
}
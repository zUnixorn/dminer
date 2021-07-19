use lavalink_rs::model::Track;
use serenity::prelude::TypeMapKey;

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
			currently_playing: None,
		}
	}

	pub fn next(&mut self) -> Option<Track> {
		if self.tracks.is_empty() {
			self.currently_playing = None;
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

	pub fn get_page(&self, page: usize) -> String {
		let mut page_content = String::new();
		for i in (15 * (page - 1))..(15 * page) {
			if i >= self.tracks.len() { break; } //Stop the loop at the end of the Vector
			page_content.push_str(&format!("{} . {}\n", i, self.tracks[i].info.as_ref().unwrap().title))
		}
		page_content.push_str(&format!("\n\nPage {} of {}", page, ((self.tracks.len()) / 15) + 1)); //TODO needs work, if the length of the queue is a multiple of the page size it will display one page too much as total. Maybe round up?
		page_content
	}
}
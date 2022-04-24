use std::fs::File;
use std::io::Read;

use serde::Deserialize;
use serenity::prelude::TypeMapKey;

#[derive(Deserialize)]
pub struct ConfigData {
	pub general: General,
	pub music: Option<Music>,
}

#[derive(Deserialize)]
pub struct General {
	pub token: String,
	pub prefix: String,
	pub invite_url: String,
}

#[derive(Deserialize)]
pub struct Music {
	pub lavalink_password: String,
}


impl TypeMapKey for ConfigData {
	type Value = ConfigData;
}

pub fn read_config() -> ConfigData {
	log::debug!("Reading config file");
	let mut config_file = File::open("./config.toml").expect("Configuration file not found");
	let mut config_content = String::new();
	config_file.read_to_string(&mut config_content).unwrap();

	let config_data: ConfigData = toml::from_str(&config_content)
		.expect("Config file was not a valid TOML file or something was missing");

	config_data
}
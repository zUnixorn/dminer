# Ledermann Discord Bot

This bot is mainly intended to be hosted by yourself although you can also invite
it [here](https://discord.com/api/oauth2/authorize?client_id=558412881574494239&permissions=8&scope=bot)

## Setup and Usage

### Downloading:

A release binary is usually provided for each release. 
If a build with specific features you want is not available, you should compile your own. \
The log level of the bot is currently configured in the source code, for a custom log level you have to self
compile. \
The instructions are mainly with linux in mind as we do develop or run the bot on Windows. 
They should still apply almost 1:1 for windows besides some commands regarding terminal / commandline usage.

### Self compiling:

If you self compile, you will need a working rust toolchain installation. More information can be
found [here](https://www.rust-lang.org). \
First you must clone or download the repository. \
Next run `cargo build --release` to build with the default features (currently none). \
If you want the music bot feature run `cargo build --release --features music`.

#### Features:

| features |
| -------- |
| all      |
| music    |

##### Feature music:

The music feature enables the bot to join voice channels and play music. \
The bot is able to play music from a link, add music (and whole playlists) to a queue,
search for a song on YouTube and more. \
It requires a bit more setup to get running since it uses [Lavalink](https://github.com/freyacodes/Lavalink)
to play and search for music which is an external program. 
Either [Lavalink](https://github.com/freyacodes/Lavalink) or [Andesite](https://github.com/natanbc/andesite)
can be utilized, choose whichever you prefer. (If you have no idea, in our own instance we use Andesite but
either is fine). 

##### Feature all:

The `all` feature just activates all available features in the build.

### Configuration and usage

Once you have your hands on a binary of the bot we can begin.\
Best would be to create a new folder for the bot where you can put its data.

#### Configuration file

A sample configuration file with the name `config.toml.sample` can be found in this repository. \
You can copy, rename it to `config.toml` and then replace the placeholder values with your own data 
(like discord token, invite link and prefix). \
The config file **must be**  be in the same directory as the bot, otherwise it will not start. \
If you are running with the music feature enabled you should also configure the music related settings
in the config file since otherwise the bot **will** fail to start. \
You can get a token for your bot on the [discord developers page](https://discord.com/developers/applications). \

#### Usage

If the configuration is completed you can start the bot binary through a terminal (or command prompt
if you are on Windows).
If the bot starts successfully you can keep it open by starting it in a tmux session (which is what we do
on our server. If you have the music feature enabled, you can do the same thing with Lavalink/Andesite). \

The only thing left to do now is to invite your bot to your server, the available commands can be viewed 
with the help command (if the prefix is `~` the usage would be `~help`).

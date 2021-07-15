use serenity::framework::standard::{Args, CommandResult, macros::command};
use serenity::model::channel::Message;
use serenity::prelude::Context;

//TODO: Proper Error reply
#[command]
#[aliases("repl")]
#[description("Evaluates a given mathematical expression\nExample: eval 2 - 3 * log(24/3) ^ 5")]
pub async fn eval(ctx: &Context, msg: &Message, args: Args) -> CommandResult {
	let mut namespace = fasteval::EmptyNamespace; //no variables therefore empty namespace

	let res = fasteval::ez_eval(args.rest(), &mut namespace)?;

	msg.channel_id.say(&ctx.http, &res.to_string()).await?;

	Ok(())
}
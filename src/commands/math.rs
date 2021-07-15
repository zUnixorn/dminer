use serenity::framework::standard::{Args, CommandResult, macros::command};
use serenity::model::channel::Message;
use serenity::prelude::Context;

//TODO: Proper Error reply
#[command]
#[aliases("+")]
#[description("adds 2 numbers\nUsage: add number1 number2\nExample: add 2 2")]
pub async fn add(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let first = args.single::<f64>()?;
	let second = args.single::<f64>()?;

	let res = first + second;

	msg.channel_id.say(&ctx.http, &res.to_string()).await?;

	Ok(())
}

#[command]
#[aliases("*")]
#[description("multiply 2 numbers\nExample: multiply 2 2")]
pub async fn multiply(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let first = args.single::<f64>()?;
	let second = args.single::<f64>()?;

	let res = first * second;

	msg.channel_id.say(&ctx.http, &res.to_string()).await?;

	Ok(())
}

#[command]
#[aliases("/")]
#[description("divide 2 numbers\nExample: divide 2 2")]
pub async fn divide(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let first = args.single::<f64>()?;
	let second = args.single::<f64>()?;

	let res = first / second;

	msg.channel_id.say(&ctx.http, &res.to_string()).await?;

	Ok(())
}

#[command]
#[aliases("-")]
#[description("subtracts 2 numbers\nExample: subtract 2 2")]
pub async fn subtract(ctx: &Context, msg: &Message, mut args: Args) -> CommandResult {
	let first = args.single::<f64>()?;
	let second = args.single::<f64>()?;

	let res = first - second;

	msg.channel_id.say(&ctx.http, &res.to_string()).await?;

	Ok(())
}

#[command]
#[aliases("repl")]
#[description("Evaluates a given mathematical expression\nExample: eval 2 - 3 * log(24/3) ^ 5")]
pub async fn eval(ctx: &Context, msg: &Message, args: Args) -> CommandResult {
	let mut namespace = fasteval::EmptyNamespace; //no variables therefore empty namespace

	let res = fasteval::ez_eval(args.rest(), &mut namespace)?;

	msg.channel_id.say(&ctx.http, &res.to_string()).await?;

	Ok(())
}
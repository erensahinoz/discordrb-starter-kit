require 'discordrb'
require 'dotenv/load'

# Create a new bot instance
bot = Discordrb::Commands::CommandBot.new(
  token: ENV['DISCORD_BOT_TOKEN'],
  application_id: ENV['DISCORD_APP_ID'],
  prefix: '!'
)

# Define a slash command for /ping
bot.slash_command :ping, description: "Responds with 'Pong!'" do |event|
  event.respond "Pong!"
end

# Define a slash command for /hello
bot.slash_command :hello, description: "Greets the user" do |event|
  user = event.user.name
  event.respond "Hello, #{user}!"
end

# Start the bot
bot.run

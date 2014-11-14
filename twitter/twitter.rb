require 'twitter'

require_relative '../config/config'

# We should take a string here...
example_string = "Hello world!"

# Here we have to login with the tokens provided by the Twitter app...
$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "g0sjVBXgdWp3fqx06aHJaAGUC"
  config.consumer_secret     = "I87ts6cUgXIthPMWjMhTmuNCQunVYhBO2HudXputKmhCJnmoUv"
  config.access_token        = "2898963229-dE57TZ54LtMLvAuWDx0g3SUkM7HXIaoJWjqwwXn"
  config.access_token_secret = "xaxTgvh3fV6WT4ftsLcxLAXZ4IBnQXNoMDr7qmI9hMrgl"
end

def tweet!(text)
  $client.update(text)
end

# And here we tweet!
# tweet!(example_string)

def retweet_all
  $client.search("to:startupinator", :result_type => "recent").take(1).collect do |tweet|
    # === DISPLAY THE USERNAME AND THE TWEET RECEIVED
    # p "You received a tweet from #{tweet.user.screen_name}: #{tweet.text}"
    # === RETWEET TO THE USER ===
    # $client.update("@#{tweet.user.screen_name} You're so cool man.")
  end
end

retweet_all


require 'twitter'

require_relative '../config/config'

# We should take a string here...
example_string = "Hello world!"

# Here we have to login with the tokens provided by the Twitter app...
$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "YOUR_CONSUMER_KEY"
  config.consumer_secret     = "YOUR_CONSUMER_SECRET"
  config.access_token        = "YOUR_ACCESS_TOKEN"
  config.access_token_secret = "YOUR_ACCESS_SECRET"
end

def tweet!(text)
  text.length <= 140 ? $client.update(text) : raise("Error: string too long!")
end





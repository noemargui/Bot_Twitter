 # ligne très importante qui appelle la gem.
require 'twitter'

# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'
Dotenv.load

# quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter
	client = Twitter::REST::Client.new do |config|
		config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
		config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end
	return client
end

client = Twitter::REST::Client.new do |config|
	config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
	config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
	config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
	config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte
client.update('Un deuxième tweet compatible avec mon spec?')

=begin

def post_tweet(client)
	end

puts login_twitter
=end
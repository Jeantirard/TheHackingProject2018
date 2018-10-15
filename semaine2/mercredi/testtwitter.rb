# Email de la liste de jus


require 'pry' #binding.pry
require 'twitter'
#dos cosas necesarias para llamar la informacion que hay en mi .env
#require que llama la gema dotenv y Dotenv.load que lee el lo que hay en el .env que esta en el mismo fichero
require 'dotenv'
Dotenv.load
# quelques lignes qui enregistrent les clés d'APIs

def keys(config)
	config.consumer_key			= ENV["TWITTER_CONSUMER_KEY"]
 	config.consumer_secret		= ENV["TWITTER_CONSUMER_SECRET"]
 	config.access_token			= ENV["TWITTER_ACCESS_TOKEN"]
	config.access_token_secret	= ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

def res
	client = Twitter::REST::Client.new do |config|
		keys(config)
	end
end
res
def stri
	client = Twitter::Streaming::Client.new do |config|
		keys(config)
	end
end
my_client = res
my_stri = stri

 	#twiiter quelque chose
my_client.update('Mon premier tweet en ruby !!!!')
	#Seguir alguna persona
#client.follow("Camilo42Es")
my_client.update('Bonjour monde!')
my_client.search("James Rodriguez", result_type: "recent").take(3).collect do |tweet|
  "#{tweet.user.screen_name}: #{tweet.text}"
end

# la comanda pasada busca los id de los tweet, y la pasamos a texto con la siguiente
# my_client.status(1050042754871508998).text. 

topics = ["Te amo"]
my_array = Array.new
my_stri.filter(track: topics.join(",")) do |object|
  my_array << object.text if object.is_a?(Twitter::Tweet)
  	
  	if my_array.size == 2 
  		break
  	end
end


binding.pry


topics = ["psg"]
my_stri.filter(track: topics.join(",")) do |object|
  	p object.text if object.is_a?(Twitter::Tweet)
end
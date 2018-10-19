require 'bundler'
Bundler.require

# this class search for townhalls twitter accounts, parse it to the JSON file
# and follow townhalls handlers
class Townhalls_follower

	attr_accessor :data

	def initialize
		@session = init_rest
		@handles = Array.new(0)
		@data = json_to_hash
	end

	#init rest initialize a new REST client
	def init_rest
		Dotenv.load('.env')
		session = Twitter::REST::Client.new do |config|
			config.consumer_key        = ENV['TWITTER_API_KEY']
			config.consumer_secret     = ENV['TWITTER_API_SECRET']
			config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
			config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
		end
	end

	# With a townhall name, search users take first and make handler
	def set_handle(townhall_name)
			puts "Searching for 'mairie #{townhall_name}' on Twitter"
			search_list = @session.user_search("mairie #{townhall_name}")
			# Take the first element of list
			user_id = search_list[0]
			if user_id == nil
				handle = ""
				@handles << handle
			else
				# Extract handle
				puts "#{user_id.screen_name} added to our list"
				handle = "#{user_id.screen_name}"
				#add handle to handles array
				@handles << handle
				# add this to the data hash
				@data[townhall_name]["twitter"] = "@#{handle}"
			end
	end

	# Json file to hash data
	def json_to_hash(file = './db/test.json')
		data = File.read(file)
		JSON.parse(data)
	end

 	# follow a user user
	def follow_user(user)
		if user != ""
			@session.follow(user)
			puts "You are now following #{user}"
		end
	end

	def update_json(file = './db/test.json')
		File.open(file, 'w') do |f|
			f.write(JSON.pretty_generate(@data))
		end
	end

	def perform
		@data.keys.each do |item|
			set_handle(item)
		end
		# Follow only 2 users (prevent API limits)
		i = 0
		while i < 2
			follow_user(@handles[i])
			i += 1
		end
		update_json
	end
end

require "base64"
require "HTTParty"
require 'pry'
require 'dotenv'
Dotenv.load


def encoding(client_id, client_secret)
	return "Basic " + Base64.strict_encode64("#{client_id}:#{client_secret}")
end
puts encoding(ENV["SPOTIFY_CLIENT_ID"],ENV["SPOTIFY_SECRET_ID"])


#https://developer.spotify.com/documentation/general/guides/authorization-guide/
ma_requete_post = HTTParty.post(
  "https://accounts.spotify.com/api/token", 
  headers: {'Authorization': encoding(ENV["SPOTIFY_CLIENT_ID"],ENV["SPOTIFY_SECRET_ID"])}, 
  body: {'grant_type' => 'client_credentials'}
)
puts ma_requete_post

binding.pry
get_latest_release = HTTParty.get(
	"https://api.spotify.com/v1/browse/new-releases?limit=2",
	headers = {
		"Content-Type": 'application/json',
		"Accept": 'application/json',
		"Authorization": "bearer #{ma_requete_post["access_token"]}"
	}
)
puts get_latest_release
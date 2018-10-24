require 'gossip'
	

class ApplicationController < Sinatra::Base

	

	get '/' do
		erb :index, locals: {gossips: Gossip.all}
	end

	get '/nom_classe_au_pluriel/new/' do
		erb :index
	end

	get '/gossips/new/' do
		erb :new_gossip
	end

	post '/gossips/new/' do
  		Gossip.new(params['gossip_author'],params['gossip_content']).save 
  		redirect '/' # redirige le user vers la route suivante
	end

	get '/gossips/:id' do
		Gossip.find(params['id'])
		erb(:index)
	end
end
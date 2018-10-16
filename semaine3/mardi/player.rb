require 'board.rb'
require 'game.rb'

class Player
	def initialize(player1, player2)
		@nom_player1 = player1
		@nom_player2 = player2
	end
	def name_player1
		return @nom_player1
	end
	def name_player2
		return @nom_player2
	end
end
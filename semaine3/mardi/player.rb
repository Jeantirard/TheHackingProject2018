class Player #methode *sauvegarde prenoms
	attr_accessor :name_player1, :name_player2
	def initialize(player1, player2)
		@name_player1 = player1
		@name_player2 = player2
	end
end
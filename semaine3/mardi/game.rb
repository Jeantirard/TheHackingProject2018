require 'board.rb'
require 'player.rb'

class Game
	puts "Bonjour, nous sommes à l'app TIC TAC TOE du team saphyre!"
	puts "Pour commencer, mettez-vos prenoms"
	print "Jouer 1 (X) ~: "
	p1 = gets.chomp
	print "Jouer 2 (0) ~: "
	p2 = gets.chomp
	names =Player.new(p1,p2)
	puts "#{names.name_player1}! vs #{names.name_player2}!"
	puts
	puts"voi-ci le tic tac toe"
	go =Board.new(" ", " ", " ", " ", " ", " ", " ", " ", " ") #j'envois 9 espaces vides.
	go.print_tic_tac_toe
	#binding.pry
	while true
		go.t1
		go.print_tic_tac_toe
		go.t2
		go.print_tic_tac_toe
	end
end
lacejeu = Game.new
require "pry"
class Board

	attr_accessor :a1, :a2,:a3, :b1,:b2, :b3, :c1, :c2, :c3
	def initialize(a1, a2, a3, b1, b2, b3, c1, c2, c3)
		#J'initialise 9 string's 
		@a1 = a1
		@a2 = a2
		@a3 = a3
		@b1 = b1
		@b2 = b2
		@b3 = b3
		@c1 = c1
		@c2 = c2
		@c3 = c3
	end

	def print_tic_tac_toe #methode affichage 

	puts "   1   2   3"
	puts "a  #{@a1} | #{@a2} | #{@a3} " 
	puts "  ---|---|---"
	puts "b  #{@b1} | #{@b2} | #{@b3} "
	puts "  ---|---|---"
	puts "c  #{@c1} | #{@c2} | #{@c3} "
	check_for_winner
	end

	def win
		[[@a1,@a2,@a3],
		[@b1,@b2,@b3],
		[@c1,@c2,@c3],
		[@a1,@b2,@c3],
		[@a3,@b2,@c1],
		[@a1,@b1,@c1],
		[@a2,@b2,@c2],
		[@a3,@b3,@c3]]
	end

	def check_for_winner 
  		win.each do |tab| 
    	if tab[0] == "O" && tab[1] == "O" && tab[2] == "O"
      		puts "Le joeur 0 a gañé"
      	 	break
    		elsif tab[0] == "X" && tab[1] == "X" && tab[2] == "X"
      		puts "Le joeur 1 a gañe!"
      		i +=
      		break
    		end
    	end
  	end

	def t2
		print "Quelle case Jouer2? ~: "
		cont = gets.chomp.downcase
		if cont == "a1"
			@a1 = "O"
		elsif cont == "a2"
			@a2 = "O"
		elsif cont == "a3"
			@a3 = "O"

		elsif cont == "b1"
			@b1 = "O"
		elsif cont == "b2"
			@b2 = "O"
		elsif cont == "b3"
			@b3 = "O"

		elsif cont == "c1"
			@c1 = "O"
		elsif cont == "c2"
			@c2 = "O"
		elsif cont == "c3"
			@c3 = "O"		
		end
	end

	def t1
		print "Quelle case #{} ? ~: "
		cont = gets.chomp.downcase
		if cont == "a1"
			@a1 = "X"
		elsif cont == "a2"
			@a2 = "X"
		elsif cont == "a3"
			@a3 = "X"

		elsif cont == "b1"
			@b1 = "X"
		elsif cont == "b2"
			@b2 = "X"
		elsif cont == "b3"
			@b3 = "X"

		elsif cont == "c1"
			@c1 = "X"
		elsif cont == "c2"
			@c2 = "X"
		elsif cont == "c3"
			@c3 = "X"		
		end
	end
end

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
	i = 0
	while i == 0
		go.t1
		go.print_tic_tac_toe
		go.t2
		go.print_tic_tac_toe

	end
end

lacejeu = Game.new

#gsub changer les " " par "X" ou "O"


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

	def print_tic_tac_toe(bcs = 1) #methode affichage 

	puts "   1   2   3"
	puts "a  #{@a1} | #{@a2} | #{@a3} " 
	puts "  ---|---|---"
	puts "b  #{@b1} | #{@b2} | #{@b3} "
	puts "  ---|---|---"
	puts "c  #{@c1} | #{@c2} | #{@c3} "
	check_winner(bcs)

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

	def check_winner(bcs) 
  		win.each do |tab| 
    	if tab[0] == "O" && tab[1] == "O" && tab[2] == "O"
      		puts "La personne #{bcs} a gagné"
      		return 10
    	elsif tab[0] == "X" && tab[1] == "X" && tab[2] == "X"
      		puts "La personne #{bcs} a gagné!"
      		return 10 
    		end
    	end
  	end

	def t2 
		print "Quelle case Joueur2? ~: "
		cont = gets.chomp.downcase
		teste = true
		if cont == "a1"
			@a1 == " " ? @a1 = "O" : teste = false 
		elsif cont == "a2"
			@a2 == " " ? @a2 = "O" : teste = false
		elsif cont == "a3"
			@a3 == " " ? @a3 = "O" : teste = false

		elsif cont == "b1"
			@b1 == " " ? @b1 = "O" : teste = false
		elsif cont == "b2"
			@b2 == " " ? @b2 = "O" : teste = false
		elsif cont == "b3"
			@b3 == " " ? @b3 = "O" : teste = false

		elsif cont == "c1"
			@c1 == " " ? @c1 = "O" : teste = false
		elsif cont == "c2"
			@c2 == " " ? @c2 = "O" : teste = false
		elsif cont == "c3"
			@c3 == " " ? @c3 = "O" : teste = false		
		end
		teste
	end
	
	def t1 
		print "Quelle case Joueur1? ~: "
		cont = gets.chomp.downcase
		teste = true
		if cont == "a1"
			@a1 == " " ? @a1 = "X" : teste = false 
		elsif cont == "a2"
			@a2 == " " ? @a2 = "X" : teste = false
		elsif cont == "a3"
			@a3 == " " ? @a3 = "X" : teste = false

		elsif cont == "b1"
			@b1 == " " ? @b1 = "X" : teste = false
		elsif cont == "b2"
			@b2 == " " ? @b2 = "X" : teste = false
		elsif cont == "b3"
			@b3 == " " ? @b3 = "X" : teste = false

		elsif cont == "c1"
			@c1 == " " ? @c1 = "X" : teste = false
		elsif cont == "c2"
			@c2 == " " ? @c2 = "X" : teste = false
		elsif cont == "c3"
			@c3 == " " ? @c3 = "X" : teste = false		
		end
		teste
	end
end

class Player
	attr_accessor :name_player1, :name_player2
	def initialize(player1, player2)
		@name_player1 = player1
		@name_player2 = player2
	end
end

class Game
	pp = true
	while pp == true
		puts "Bonjour, nous sommes l'app TIC TAC TOE de la Team Saphyre!"
		puts "Pour commencer, mettez-vos prenoms"
		print "Joueur 1 (X) ~: "
		p1 = gets.chomp
		print "Joueur 2 (0) ~: "
		p2 = gets.chomp
		names =Player.new(p1,p2)
		puts "#{names.name_player1}! vs #{names.name_player2}!"
		puts
		puts"Voici le tic tac toe"
		go =Board.new(" ", " ", " ", " ", " ", " ", " ", " ", " ") #j'envois 9 espaces vides.
		go.print_tic_tac_toe
		#binding.pry
		i = 1
		var1 = 0
		var2 = 0
		while i <10
			i += 1
			while !go.t1
			end
			var1 = go.print_tic_tac_toe(names.name_player1)
			break if i >= 10 

			if var1 == 10 || var2 == 10
				i = 10
			else
				i += 1
				while !go.t2
				end
				var2 =go.print_tic_tac_toe(names.name_player2)
				if var1 == 10 || var2 == 10
					i = 10
				end
			end 
		end
		p "Merci!!"
		p "si tu veux rejouer écris n'importe quoi"
		p "si tu veux arreter le programme tapes 1 ~: "
		oliii = gets.to_i
		if oliii == 1
			break
		end
	end
end

lacejeu = Game.new

#gsub changer les " " par "X" ou "O"

=begin
   1   2   3
a  X | X | O
  ---|---|---
b  O | O | X
  ---|---|---
c  X | O | X
=end
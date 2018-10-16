require_relative "player"

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

	def win #array avec les combinaisons possibles pour gagner
		[[@a1,@a2,@a3],
		[@b1,@b2,@b3],
		[@c1,@c2,@c3],
		[@a1,@b2,@c3],
		[@a3,@b2,@c1],
		[@a1,@b1,@c1],
		[@a2,@b2,@c2],
		[@a3,@b3,@c3]]
	end

	def check_winner(bcs)  #methode qui confirme si un des combinaisons a etait fait ou pas 
  		win.each do |tab| 
    	if tab[0] == "O" && tab[1] == "O" && tab[2] == "O"
      		puts "#{bcs.capitalize} a gagné"
      		return 10
    	elsif tab[0] == "X" && tab[1] == "X" && tab[2] == "X"
      		puts "#{bcs.capitalize} a gagné!"
      		return 10 
    		end
    	end
  	end

	def t2 #tour 2eme joueur
		o = 0
		while o == 0
			print "Quelle case Joueur2? ~: "
			cont = gets.chomp.downcase
			if cont == "a1" || cont == "a2" || cont == "a3" || cont == "b1" || cont == "b2" || cont == "b3" || cont == "c1" || cont == "c2" || cont == "c3"
				o = 1  
			else
			end
		end
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


	def t1 #tour premier joueur
		o = 0
		while o == 0
			print "Quelle case Joueur1? ~: "
			cont = gets.chomp.downcase
			if cont == "a1" || cont == "a2" || cont == "a3" || cont == "b1" || cont == "b2" || cont == "b3" || cont == "c1" || cont == "c2" || cont == "c3"
				o = 1  
			else
			end
		end
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
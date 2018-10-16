require_relative "player"
require_relative "board"

class Game
	pp = true
	while pp == true
		puts "Bonjour, nous sommes l'app TIC TAC TOE de la Team Saphyre!"
		puts "Pour commencer, mettez-vos prenoms"
		print "Joueur 1 (X) ~: "
		p1 = gets.chomp			#variable qui prend le premier prenom
		print "Joueur 2 (0) ~: "
		p2 = gets.chomp			#variable qui prend le 2eme prenom
		names =Player.new(p1,p2) #elle creé un id pour name, on envoie 2 valeur prenom 1 et prenom 2
		puts "#{names.name_player1}! vs #{names.name_player2}!"
		puts
		puts"Voici le tic tac toe"
		go =Board.new(" ", " ", " ", " ", " ", " ", " ", " ", " ") #j'envois 9 espaces vides.
		go.print_tic_tac_toe   #fait appel au methode qui affiche le tic tac toc.
		i = 1
		var1 = 0		#var1,var2,i variables à utiliser dans la boucle
		var2 = 0
		while i <10
			i += 1
			while !go.t1
			end
			var1 = go.print_tic_tac_toe(names.name_player1) #j'envois le premier prenom au methode qui affiche le tic tac toc, pour afficher le prenom de la personne qui gagne
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
		p "*" * 10
		p "si tu veux rejouer écris n'importe quoi"
		p "si tu veux arreter le programme tapes 1 ~: "
		oliii = gets.to_i  
		if oliii == 1
			break
		end
	end
end

lacejeu = Game.new
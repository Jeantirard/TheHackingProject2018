puts "Salut Mr l'utilisateur, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "~: "
number_floors = gets.to_i
puts "Voici la piramide :"

conteneur = number_floors
i = 0
while (i <= number_floors)
	if (conteneur == number_floors)
		print ""
	else 
		conteneur.times do
		print " "
		end
	end
	i.times do 
		print "#"
	end
	if (i>0)
	puts
	end
	conteneur -= 1
	i += 1
end
puts "Salut Mr l'utilisateur, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "~: "
number_floors = gets.to_i
puts "Voici la piramide :"

i = 0
while (i <= number_floors)
	i.times do 
		if (i == 1)
			print "#"
		else
			i.times do
			print "#"
			end
	end
	if (i>0)
	puts " "
	end
	i += 1
end
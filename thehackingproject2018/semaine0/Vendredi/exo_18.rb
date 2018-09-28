puts "Bonjour Mr l'utilisateur"
puts "À présent, nous allons créer 50 faux emails"

box = []

i = 1
while (i <= 50)
	if (i >= 0 && i < 10)
		box << "jean.dupont.0#{i}@email.fr"
	else
		box << "jean.dupont.#{i}@email.fr"
	end
	i += 1
end

aff = 0
while (aff < (i - 1))
	puts box[aff]
	aff += 1
end
puts "Conditions !"

a = 11

if a == 10
	puts "a est égale a 10"
elsif a > 10
	puts "a est superieur a 10"
else
	puts "a est inferieur a 10"
end
puts " "
puts " "

emails = [
	"cami@hotmail.com", "hola@hotmail.com","parcero@hotmail.com"
]

if emails.size == 0
	puts "Erreur, je n'ai pas d'emails"
elsif emails.size == 1
	puts "J'ai un seul Email"
else
	puts "j'ai plusiurs Email's"
end


emails.each do |email|
	puts email
	if email == "hola@hotmail.com"
		puts "                Ton login :   hola@......."
	end
end
	
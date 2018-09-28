puts "Bonjour Mr L'utilisateur"
print "Quelle age as-tu? ~ : "
age = gets.to_i

contage = age
i = 0
while  contage >= i
	if age == i
		puts "Il y a #{age} ans, tu avais la moitié de l'age que tu as aujourd'hui"
	else
		puts "Il y a #{age} ans, tu avais #{i} ans!"
	end
	age -= 1
	i += 1
end
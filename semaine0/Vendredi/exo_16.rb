puts "Bonjour Mr L'utilisateur"
print "Quelle age as-tu? ~ : "
age = gets.to_i

contage = age
i = 0
while  contage >= i
		puts "Il y a #{age} ans, tu avais #{i} ans!"
		age -= 1
		i += 1
end
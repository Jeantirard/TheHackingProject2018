puts "Bonjour Mr L'utilisateur"
print "Quelle est votre année de naissance? ~ : "
nombre_br = gets.to_i

a = 2017
i = 0
while a >= nombre_br 
	if i == 1
		puts "Nous somme en #{nombre_br} et vous avez #{i} an !"
	elsif i == 0
		puts "Nous somme en #{nombre_br} vous n'avez même pas 1!"
	else
		puts "Nous somme en #{nombre_br} et vous avez #{i} ans !"
	end
	nombre_br += 1
	i += 1
end
puts "Bonjour Mr l'utilisateur"
print "Quelle est ton année de naissance? ~ : "
user_birth = gets.to_i
# gets.chomp = récolte de la chaine de caractère et gets.to_i = recolte du nombre
while user_birth < 2019
	puts "#{user_birth}"
	user_birth += 1
end
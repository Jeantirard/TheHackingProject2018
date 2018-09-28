puts "Bonjour Mr l'utilisateur!"
print "Quelle est votre année de naissance? > : "
user_birth = gets.chomp 
puts "En 2017, vous aviez #{2017 - user_birth.to_i} ans!"
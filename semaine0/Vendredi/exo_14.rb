puts "Bonjour Mr L'utilisateur"
print "Je mets le compteur à rebours à partir de quel nombre? ~ : "
nombre = gets.to_i

while (nombre >= 0)
	puts "#{nombre}"
	nombre -= 1
end
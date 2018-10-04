def ask_first_name
	print"Tapez votre prenom? ~: "
	gets.chomp
end

def say_hello(first_name)
	puts "Bonjour #{first_name}"
end
say_hello(ask_first_name)
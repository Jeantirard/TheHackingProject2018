def getpass
	print "Crée ton mot de passe ~: "
	gets.chomp
end

def getveri
	print "Confirme ton mot de passe ~: "
	gets.chomp
end

def define_password
	@user_password = getpass
end

def password_verification
	if define_password == getveri
		puts"oui"
	else
		puts "non"
	end
end

def perform
	password_verification
end
perform
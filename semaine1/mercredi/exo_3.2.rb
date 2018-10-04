def getpass
	print "Crée ton mot de passe ~: "
	gets.chomp
end

def getveri
	print "Confirme ton mot de passe ~: "
	gets.chomp
end

def connect(password)
	@user_password = password

	while @user_password != getveri
		puts "Error, try again"
	end
	puts "You are online"

end

def perform
	connect(getpass) 
end
perform
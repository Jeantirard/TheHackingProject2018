require "pry"

class User
		#on peut ajouter des parametres à initialize
  def initialize(firstname, lastname)
    puts "I'm a new User named #{firstname} #{lastname}"
  end

end

binding.pry

puts "end of file"

	# commandes à utiliser pour teste
camilo = User.new("camilo","42.es")
	# =>   I'm a new User named camilo 42.es
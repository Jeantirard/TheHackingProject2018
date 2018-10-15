require "pry"


class User
	#initialize garde les parametres 
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def full_name
    return "#{@firstname.capitalize} #{@lastname.capitalize}"
  end

end

binding.pry

	# commandes à utiliser pour teste
camilo = User.new("camilo","42.es")
	
camilo.full_name
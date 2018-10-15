require 'pry'

class User
  #Quand on fait appel a User avec User.new, le initialize s'execute en premier!
  def initialize
    puts "I'm a new User"
  end

  def set_name_to(some_string)
    @name = some_string
  end

  def get_name
    return @name
  end

  def greet
    puts "Hi! My name is #{@name}!"
  end

end

binding.pry

puts "end of file"


# commandes à utiliser pour teste
camilo = User.new #appel
        
    #camilo.set_name_to("camilo")
    #puts camilo.get_name
camilo.greet
      #on appel greet qui et affiche hi ... sans le nom
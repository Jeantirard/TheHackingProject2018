require "pry"
class User

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def full_name
    return "#{@firstname.capitalize} #{@lastname.capitalize}"
  end

  def get_firstname
    return @firstname
  end

  def set_firstname(firstname)
    @firstname = firstname
  end

end
binding.pry

camilo = User.new("camilo","42.es")
camilo.full_name # => Camilo 42.es
camilo.get_firstname # => camilo
camilo.set_firstname("Rumkox") #il change le @firstname 
camilo.full_name # => Rumkox 42.es



def food_eaten
  @array = Array.new
end

def eat(hola)
  @array << hola
end
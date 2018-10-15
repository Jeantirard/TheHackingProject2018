require 'pry'

class Monkey

	attr_accessor :comida

	def initialize(f_name,l_name)
		 @firstname = f_name
		 @lastname = l_name
		 @my_array = Array.new
	end
	def name
		return @firstname.capitalize
	end
	def species
		return @lastname
	end
	def foods_eaten
		@my_array 
	end
	def eat(arg)
		if arg[0].match(/a|e|i|o|u|y/) == nil
		@my_array << arg
		end
	end
	def introduce
		return "#{name} #{species} #{foods_eaten}"
	end
end

#binding.pry
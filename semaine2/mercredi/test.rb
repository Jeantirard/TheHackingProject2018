require 'pry'

guess_this_number = 20
var = gets.to_f
binding.pry
if guess_this_number == var
	p "hola"
elsif guess_this_number > var
	p "non"
else
	p "si"
end

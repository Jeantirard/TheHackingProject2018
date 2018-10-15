#C'est mouche mais ça marche

class ScrabbleWord
	def initialize(word)
		@word = word
	end

	def score
		count = 0
		my_array = @word.downcase.split('')
		my_array.each do |x|
			if x == "z" || x == "q"
				count += 10
			elsif x == "x" || x == "j"
				count += 8
			elsif x == "k"
				count += 5
			elsif x == "f" || x == "h" || x == "v" || x == "w" || x == "y"
				count += 4
			elsif x == "b" || x == "c" || x == "m" || x == "p"
				count += 3
			elsif x == "d" || x == "g"
				count += 2																											
			else
				count += 1
			end	
		end
		return count
	end

	def multiplier_score(arg1)
		j = score 
		return j * arg1
	end
end
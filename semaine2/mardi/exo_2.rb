def chiffre_de_cesar(s,n)
	i = 0
	tab = s.split('')
	tab.each do |v|
		if 'a'.ord <= v.ord && v.ord <= 'z'.ord || 'A'.ord <= v.ord && v.ord <= 'Z'.ord
			tab[i] = v.ord + n
				if ('a'.ord <= v.ord && v.ord <= 'z'.ord && tab[i] >= 123) || ('A'.ord <= v.ord && v.ord <= 'Z'.ord && tab[i] >= 90)
					tab[i] -= 26
				end
			tab[i] = tab[i].chr
		end 
		i += 1
	end
	return tab.join('')
end
def perform
	puts chiffre_de_cesar("What a string!", 5)
end
perform

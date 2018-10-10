@array1 = Array.new
@array2 = Array.new

#Pour faire une array de 1 a 10  nom_array=[*1..10]
def create_array(ar,nb)
	nb-=1
	nb.times do |x|
		ar << x + 1
	end
	return ar
end

def multip(array1)
	a = array1.select { |x| x%3==0 }
	b = array1.select { |x| x%5==0 }
	c = (a + b).sort.uniq
	return c
end

def sum_array(array)
	sum = 0
	array.each do |x|
		sum += x
	end
	return sum
end

def display
	puts "Bonjour! Programme pour Cédric Villani "
	puts "*" * 20
	puts "Tapez 1 pour voir les mutiples de 3 et 5 en dessous de 10"
	puts "Tapez 2 pour voir le resultat de la somme des mutiples de 3 et 5 en dessous de 10"
	puts "Tapez 3 pour voir les mutiples de 3 et 5 en dessous de 1000"
	puts "Tapez 4 pour voir le resultat de la somme des mutiples de 3 et 5 en dessous de 1000"
	puts "Tapez 0 pour arreter le programme"
	i = 0
	while i == 0
		print "Tappez un numero~: "
		v = gets.to_i
		if v == 0
			break
		end
		if v == 1
			p multip(create_array(@array1,10))
		end
		if v == 2
			p sum_array(multip(create_array(@array1,10)))
		end
		if v == 3
			p multip(create_array(@array2,1000))
		end
		if v == 4
			p sum_array(multip(create_array(@array2,1000)))
		end
		if (v >= 5 || v < 0)
			p "Petit malin"
		end
	end
end

def perform
	display
end
perform
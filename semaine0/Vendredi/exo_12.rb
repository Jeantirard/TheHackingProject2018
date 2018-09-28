#On ne nous a pas precisé si nous commençons à compter à partir de 0 (selon Ruby) ou 1
puts "Bonjour Mr l'utilisateur"
print "Veux-tu que je compte jusqu'à quelle nombre? :C  ~: "
number = gets.chomp
num = number.to_i + 1


num.times do |i|
	puts "#{i}"
end
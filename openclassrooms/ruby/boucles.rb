puts "Primera vez dentro de un archivo .rb"
puts " "
3.times do |a|
	puts "#{a}"
end

5.times do |e|
	puts "Hola"
	e.times do
		puts "Camilo"
	end
end

uti = [
	"Camilo","Camille","Peter","Eliana"
]

i = 0
uti.each do |uti|
	puts i
	i = i + 1
	puts uti
end
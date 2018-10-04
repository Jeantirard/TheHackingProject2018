def pgets
	print"comment tu t'appelles? ~: "
	gets.chomp
end  #camilo
def test(nombre)
	puts "bonjour #{nombre}"
end
def perform
	test(pgets)
end
perform
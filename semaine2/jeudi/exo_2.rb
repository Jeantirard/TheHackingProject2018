require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


def namescrypto
	my_array = Array.new
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.css('.currency-name-container.link-secondary').map do |a|
		post_name = a.text
		my_array.push(post_name)
	end
end

def pricecrypto
	my_array = Array.new
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.css('.price').map do |a|
		post_name = a.text
		my_array.push(post_name)
	end
end

def menudisplay
	puts "Bonjour!"
	puts "*" * 20
	puts "Tapez 1 pour voir la cripto en face du price"
	puts "Tapez 2 Pour voir le cours de toutes les cryptomonnaies dans un Array"
	puts "Tapez 0,une lettre, ou entrée pour arreter le programme"
end


def display
	i = 0
	while i == 0
		print "Tapez un numero~: "
		v = gets.to_i
		if v == 0
			break
		end
		if v == 1
			namescrypto_array = namescrypto[0]
			pricecrypto_array = pricecrypto[0]
			a = 2061
	 		y = 0
	 		while y <= a
	 			puts "Name cripto=>  #{namescrypto_array[y]} prix => #{pricecrypto_array[y]}"
	 		y += 1
	 		end
		end
		if v == 2
			my_array = Array.new
			namescrypto_array = namescrypto[0]
			pricecrypto_array = pricecrypto[0]
			my_hash = Hash[namescrypto_array.zip(pricecrypto_array)]
			p my_array << my_hash

		end
		if (v >= 3 || v < 0)
			p "Petit malin"
		end
		if v == 9
			menudisplay
		end
		puts "Menu oublié? tapez 9"
	end
end

def perform
	menudisplay
	display
end
perform
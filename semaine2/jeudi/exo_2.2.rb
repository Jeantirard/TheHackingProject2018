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



namescrypto_array = namescrypto[0]
pricecrypto_array = pricecrypto[0]
a = 2061
y = 0
while y <= a
	puts "cripto= #{namescrypto_array[y]} price =#{pricecrypto_array[y]}"
	y += 1
end
binding.pry

my_hash = Hash[namescrypto_array.zip(pricecrypto_array)]

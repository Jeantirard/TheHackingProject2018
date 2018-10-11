#require 'httparty' #utilisar el essa2 https://luisfernandez.io/introduccion-al-web-scraping/
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def names_mairies
	my_array = Array.new
	b = "http://annuaire-des-mairies.com/"
	doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
	#binding.pry
	doc.css('.Style20').css('.lientxt').map do |a|
		post_name = a.text
		my_array.push(post_name)
	end
	return my_array
end

def get_the_email_of_a_townhal_from_its_webpage(url)
	doc = Nokogiri::HTML(open(url))
	doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |link|
  	if (link.content) == ""
  		puts "la mairie de no email"
  	else
  		puts link.content
  	end
  	#binding.pry
	end
end

def get_all_the_urls_of_val_doise_townhalls
	my_array = Array.new
	b = "http://annuaire-des-mairies.com/"
	doc = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
	#binding.pry
	doc.css('.Style20').css('.lientxt').map do |a|
		post_name = b + a['href'][2..-1]
		my_array.push(post_name)
	end
	return my_array
end

def menudisplay
	puts "Bonjour!"
	puts "*" * 20
	puts "Tapez 1 pour voir l'email  du mairie de VAUREAL"
	puts "Tapez 2 pour voir Pour voir toutes les villes de Val D'Oise"
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
			get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/95/vaureal.html")
		end
		if v == 2
			get_all_the_urls_of_val_doise_townhalls.each do |x|
				get_the_email_of_a_townhal_from_its_webpage(x)
			end
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
	names_mairies
	menudisplay
	display
end
perform


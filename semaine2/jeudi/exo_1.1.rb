require 'httparty' #utilisar el essa2
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
  		puts link.content
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

names_mairies

var = get_all_the_urls_of_val_doise_townhalls.each do |x|
	get_the_email_of_a_townhal_from_its_webpage(x)
end


binding.pry







#my_hash = Hash.new
#my_hash[:name] = names_mairies
#my_hash[:email] = get_all_the_urls_of_val_doise_townhalls


#p my_hash = names_mairies.zip(get_all_the_urls_of_val_doise_townhalls) 
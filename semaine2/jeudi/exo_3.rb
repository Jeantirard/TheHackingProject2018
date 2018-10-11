require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def namesdeputes
	my_array = Array.new
	doc = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600&lang=fr"))
	doc.css('.titre_normal').map domy |a|
		post_name = a.text
		my_array.push(post_name)
	end
end
my_array = namesdeputes
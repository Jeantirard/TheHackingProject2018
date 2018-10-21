class View
	def create_gossip
		print "Author: "
		author = gets.chomp
		print "Gossip: "
		content = gets.chomp
		return params = { content: content, author: author }
	end
end
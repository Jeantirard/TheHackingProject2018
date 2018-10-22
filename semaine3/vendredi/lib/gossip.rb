require 'csv'

class Gossip

	attr_reader :author, :content

	def initialize(author, content)
		@content = content
		@author = author
	end

	def save
		CSV.open("./db/gossip.csv", "w") do |csv|
  			csv << [@author, @content]
		end
	end

	def self.all
		all_gossips = []
		CSV.foreach("./db/gossip.csv") do |row|
			all_gossips << row
		end
		return p all_gossips
	end
end


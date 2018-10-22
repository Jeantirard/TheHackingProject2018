require 'csv'

CSV.foreach("gossip.csv") do |row|
  p row
end
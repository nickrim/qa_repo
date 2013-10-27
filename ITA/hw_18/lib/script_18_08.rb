puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Sorting an array"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'trollop'

opts = Trollop::options do
  opt :first, "first_season", :short => "-a", :type => :string
  opt :second, "second_season", :short => "-b", :type => :string
  opt :third, "third_season", :short => "-c", :type => :string
  opt :fourth, "fourth_season", :short => "-d", :type => :string
end

seasons = []
seasons [0] = opts [:first]
seasons [1] = opts [:second]
seasons [2] = opts [:third]
seasons [3] = opts [:fourth]

puts "Here are sorted (alphabetically) words: #{seasons.sort.join(" ")}"

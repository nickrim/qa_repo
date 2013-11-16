# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =        "JSON file as an input"
# Name                =        "Nick Krimnus"
# Email               =        "your@email.com"
# ========================================================================
puts ""

require 'optparse'
require 'json'

OptionParser.new do |opts|

opts.on("-o") do
	$a = ARGV[0]
end

end.parse!

items_array = []

json = File.read($a)
words = JSON.parse(json)

words.each do |number, name|
items_array.push name
end

puts "Here are sorted (alphabetically) words: #{items_array.sort.join(" ")}"
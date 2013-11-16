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
fruits = JSON.parse(json)

fruits.each do |number, name|
items_array.push name
end

reg=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=items_array[0].match reg

puts "His name is: \"#{name}\""
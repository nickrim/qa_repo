puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Text file as an input"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|
opts.on("-o") do
	$a = ARGV[0]
end
end.parse!

f = File.open($a, "r")
items_array = []

f.each_line {|line|
	items_array.push line
}

puts "My favorite fruits are #{items_array[0].chomp}s and #{items_array[1].chomp}s"
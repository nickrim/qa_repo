require 'optparse'

items = []

OptionParser.new do |opts|
	opts.on("-i", "--input") {$input_file = ARGV[0]}
	opts.on("-o", "--output") {$output_file = ARGV[0]}
end.parse!

f = File.open($input_file, "r")

f.each_line {|line| items.push line.chomp}

sum = 0
count = 0

items.each {|item| 
sum += item.chomp.to_f
count += 1
}

average=sum / count


File.open($output_file, "w") do |write|

	write << "Average score of (#{items[0]},#{items[1]},#{items[2]},#{items[3]} and #{items[4]}) is #{average}"
end
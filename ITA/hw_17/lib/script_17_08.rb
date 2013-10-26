puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Sorting an array"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|

  opts.on("-a", "--first_season") do
  end
  opts.on("-b", "--second_season") do
  end
  opts.on("-c", "--third_season") do
  end
  opts.on("-d", "--fourth_season") do
  end

end.parse!

puts "Here are sorted (alphabetically) words: #{ARGV.sort.join(" ")}"


puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Pass apple and banana as options"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|

  opts.on("-f", "--first_fruit") do
    $a = ARGV[0]
  end

  opts.on("-s", "--second_fruit") do
    $b = ARGV[0]
  end

end.parse!

puts "My favorite fruits are #{$a.to_s}s and #{$b.to_s}s"

puts ""
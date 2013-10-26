puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "First number divided by the second number"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|

  opts.on("-f", "--first_number") do
    $a = ARGV[0]
  end

  opts.on("-s", "--second_number") do
    $b = ARGV[0]
  end

end.parse!

x = $a.to_i
y = $b.to_i

z = x / y

puts "When I divide #{x} by #{y} I always get #{z}!"

puts ""
puts "================================================="
puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Getting the IP address"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|

  $num = []
  i = 0

  opts.on("-a", "--first_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-b", "--second_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-c", "--third_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-d", "--fourth_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-e", "--fifth_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-f", "--sixth_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-g", "--seventh_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-h", "--eighth_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-i", "--ninth_number") do
    $num [i] = ARGV[0]
    i += 1
  end

  opts.on("-j", "--tenth_number") do
    $num [i] = ARGV[0]
    i += 1
  end

end.parse!

sum = 0
count = 0

$num.each do |x|
  sum += x.to_f
  count += 1
end

average=sum / count

puts "Average score is #{average}"
puts ""

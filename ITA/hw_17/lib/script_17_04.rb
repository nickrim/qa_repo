puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Getting the IP address"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|

  opts.on("-a", "--first_octet") do
    $a = ARGV[0]
  end

  opts.on("-b", "--second_octet") do
    $b = ARGV[0]
  end

  opts.on("-c", "--third_octet") do
    $c = ARGV[0]
  end

  opts.on("-d", "--fourth_octet") do
    $d = ARGV[0]
  end

end.parse!


ip=""
ip = ip + $a + '.' + $b + '.' + $c + '.' + $d

puts "My IP address is #{ip}"

puts ""
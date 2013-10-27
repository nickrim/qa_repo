puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Parsing a sentence"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'trollop'

opts = Trollop::options do
  opt :first, "first_octet", :short => "-a", :type => :int
  opt :second, "second_octet", :short => "-b", :type => :int
  opt :third, "third_octet", :short => "-c", :type => :int
  opt :fourth, "fourth_octet", :short => "-d", :type => :int
end

arg1 = opts [:first].to_i
arg2 = opts [:second].to_i
arg3 = opts [:third].to_i
arg4 = opts [:fourth].to_i

ip = [arg1,arg2,arg3,arg4].join(".")

puts "My IP address is #{ip}"
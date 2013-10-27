puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Average of five numbers"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'trollop'

opts = Trollop::options do
  opt :first, "first_number", :short => "-a", :type => :string
  opt :second, "second_number", :short => "-b", :type => :string
  opt :third, "third_number", :short => "-c", :type => :string
  opt :fourth, "fourth_number", :short => "-d", :type => :string
  opt :fifth, "fifth_number", :short => "-e", :type => :string
end

str =""
str += "(" + opts [:first] + ", " + opts [:second] + ", " + opts [:third] + ", " + opts [:fourth] + " and " + opts [:fifth] + ")"

sum = 0
sum +=opts [:first].to_f + opts [:second].to_f + opts [:third].to_f + opts [:fourth].to_f + opts [:fifth].to_f

count = 5

average=sum / count

puts "Average score of #{str} is #{average}"
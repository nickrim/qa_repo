puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Pass apples and bananas as options"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'trollop'

opts = Trollop::options do
  opt :first, "first_fruit", :short => "-f", :type => :string
  opt :second, "second_fruit", :short => "-s", :type => :string
end

puts "My favorite fruites are #{ opts[:first].chop} and #{ opts[:second].chop}"

  puts ""
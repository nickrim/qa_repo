puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Parsing a sentence"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'trollop'

opts = Trollop::options do
  opt :sentence, "sentence", :short => "-s", :type => :string
end

str=""

ARGV.each do |i|
  str+=i
  str+=" "
end

reg=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=str.match reg

puts "His name is: \"#{name}\""


puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Parsing a sentence"
puts "Name\t\t" +	 "Nick Krimnus"
# Email         =    "your@email.com"
puts "================================================="
puts ""

require 'optparse'

OptionParser.new do |opts|

  opts.on("-s", "--sentence") do
    $a = ARGV[0]
  end
end.parse!

str=""

ARGV.each do |i|
  str+=i
  str+=" "
end

reg=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=str.match reg

puts "His name is: \"#{name}\""


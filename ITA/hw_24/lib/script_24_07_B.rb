# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =        "Single JSON file as an input"
# Name                =        "Nick Krimnus"
# Email               =        "your@email.com"
# ========================================================================
puts ""

require 'optparse'
require 'json'

str =  __FILE__
reg = /\/[\w\.]+$/
v = str.match reg
key =  v.to_s.reverse.chop.reverse

OptionParser.new do |opts|

  opts.on("-o") do
    $a = ARGV[0]
  end

end.parse!

json = File.read($a)
var = JSON.parse(json)

value =  var[key]

items_array = []

value.each do |a, b|
  items_array.push b
end

reg=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=items_array[0].match reg

puts "His name is: \"#{name}\""
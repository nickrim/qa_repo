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

x = items_array[0].chomp.to_i
y = items_array[1].chomp.to_i

z = x / y

puts "When I divide #{x} by #{y} I always get #{z}!"
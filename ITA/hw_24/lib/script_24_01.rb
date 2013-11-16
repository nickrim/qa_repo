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

file =  __FILE__
reg = /\/[\w\.]+$/
res = file.match reg
key =  res.to_s.reverse.chop.reverse

OptionParser.new do |opts|

  opts.on("-o") do
    $a = ARGV[0]
  end

end.parse!

json = File.read($a)
var = JSON.parse(json)
# puts var.class

value =  var[key]
#puts value.class

items_array = []

value.each do |a, b|
  items_array.push b
end

puts "My favorite fruits are #{items_array[0]}s and #{items_array[1]}s"
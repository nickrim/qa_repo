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

sum = 0
count = 0

items_array.each {|item|
  sum += item.chomp.to_f
  count += 1
}

average=sum / count

puts "Average score of (#{items_array[0]},#{items_array[1]},#{items_array[2]},#{items_array[3]} and #{items_array[4]}) is #{average}"
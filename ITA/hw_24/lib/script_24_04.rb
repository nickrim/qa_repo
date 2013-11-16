# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =        "single JSON file as an input"
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

ip=""

items_array.each {|item|
  ip += item.chomp
  ip += "."
}
ip = ip.chop
puts "My IP address is #{ip}"
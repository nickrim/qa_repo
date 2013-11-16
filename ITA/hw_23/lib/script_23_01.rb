# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =        "This is a description of the script"
# Name                =        "Nick Krimnus"
# Email               =        "your@email.com"
# ========================================================================
puts ""

require 'optparse'
require 'json'

OptionParser.new do |opts|

  opts.on("-o") do
    $a = ARGV[0]
  end

end.parse!

items_array = []

json = File.read($a)
fruits = JSON.parse(json)

fruits.each do |number, name|
  items_array.push name
end

puts "My favorite fruits are #{items_array[0]}s and #{items_array[1]}s"

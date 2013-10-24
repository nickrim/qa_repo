# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =      "This is a description of the script"
# Name                =      "Nick Krimnus"
# Email               =      "your@email.com"
# ========================================================================
puts ""

ip=""

ARGV.each do |i|
  ip+=i
  ip+='.'
end

ip=ip.chop

puts "My IP address is #{ip}"

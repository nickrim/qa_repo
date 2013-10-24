# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =      "This is a description of the script"
# Name                =      "Nick Krimnus"
# Email               =      "your@email.com"
# ========================================================================
puts ""

x=ARGV[0].to_i
y=ARGV[1].to_i

z=x/y

puts "When I divide #{x} by #{y} I always get #{z}!"

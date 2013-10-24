# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =      "This is a description of the script"
# Name                =      "Nick Krimnus"
# Email               =      "your@email.com"
# ========================================================================
puts ""


str=""

ARGV.each do |i|
  str+=i
  str+=" "
end

reg=/[A-Z][a-z]+\s[A-Z][a-z]+/
name=str.match reg

puts "His name is: \"#{name}\""

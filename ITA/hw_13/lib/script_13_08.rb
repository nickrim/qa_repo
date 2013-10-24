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
ARGV=ARGV.sort()

ARGV.each do |i|
  str+=i
  str+=" "
end

print "Here are sorted (alphabetically) words: #{str}"

# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =      "This is a description of the script"
# Name                =      "Nick Krimnus"
# Email               =      "your@email.com"
# ========================================================================
puts ""

sum=0
count=0
str="("

ARGV.each do |i|
  str+=i
  str+=" "
  sum+=i.to_f
  count+=1
end

average=sum/count
str=str.chop+")"

puts "Average score of #{str} is #{average}"

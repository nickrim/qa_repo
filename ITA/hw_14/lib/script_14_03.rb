# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =        "This is a description of the script"
# Name                =        "Nick Krimnus"
# Email               =        "your@email.com"
# ========================================================================
puts ""

if RUBY_PLATFORM =~ /32/
then
  %x`ipconfig/all > a.txt`
else
  %x`ifconfig > a.txt`
end

ipv6=/[\dA-Fa-f]{1,4}::([\dA-Fa-f]{1,4}(:[\dA-Fa-f]{1,4})+?%(\d{2}|\w{2}\d))/

if ARGV[0] == "ipv6_address"
then
  reg = ipv6
else
  reg = ""
end

text_file = File.read('a.txt')
result = text_file.match reg

puts "IPv6 address of my computer: #{$&}"
puts ""
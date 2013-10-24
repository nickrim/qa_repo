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

ipv4=/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/

if ARGV[0] == "ipv4_address"
then
  reg = ipv4
else
  reg = ""
end

text_file = File.read('a.txt')
result = text_file.match reg

puts "IPv4 address of my computer: #{$&}"
puts ""

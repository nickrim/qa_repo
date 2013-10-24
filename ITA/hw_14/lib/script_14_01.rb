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
  %x`ipconfig/all > mac.txt`
else
  %x`ifconfig > mac.txt`
end

mac=/([0-9a-fA-F]{2}(-|:)){5}[0-9a-fA-F]{2}/

if ARGV[0] == "mac_address"
then
  reg = mac
else
  reg = ""
end

text_file = File.read('mac.txt')
result = text_file.match reg

puts "Mac address of my computer: #{$&}"
puts ""

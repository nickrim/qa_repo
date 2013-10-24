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

mask=/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/

if ARGV[0] == "subnet_mask"
then
  reg = mask
else
  reg = ""
end

text_file = File.read('a.txt')
address = []
i = 0

text_file.scan (reg)  do |adr|
  address[i] = adr
  i += 1
end


puts "Subnet mask: #{address[1]}"

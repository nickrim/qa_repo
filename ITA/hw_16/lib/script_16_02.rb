puts "================================================="

puts "Script\t\t" + __FILE__.chop.chop.chop
puts "Description\t" +  "Count all the files in my home directory"
puts "Name\t\t" +	 "Nick Krimnus"
# Email               =        "your@email.com"

puts "================================================="
puts ""


if RUBY_PLATFORM =~ /32/
then
  %x'dir /s %HOMEPATH%  > list.txt'
else
  %x'cd $HOME; ls -la > list.txt'
end

sleep (10)

all=/\w+.txt/
list = []

file = File.read('list.txt')

file.scan(all) do |item|
  list << item
end

puts "My home directory contains: #{list.size} txt files"
puts ""


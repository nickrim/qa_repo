require 'rest-open-uri'

require 'nokogiri'
# a.
puts ""
puts "Using gem nokogiri and selector xpath do following"
# Open the following sites and display theirs title and it’s length

doc = Nokogiri::HTML(open("http://www.shopping.com"))
# === using xpath
 doc.xpath('//title').each do |line|
#doc.css('title').each do |line|
  puts ""
  puts "1 Shopping.com title is: " + line.text
   puts "Length is : #{line.text.length}"
   puts ""
 end

  doc = Nokogiri::HTML(open("http://www.yahoo.com"))
# === using xpath
   doc.xpath('//title').each do |line|
#doc.css('title').each do |line|
     puts ""
     puts "2 Yahoo.com title is: " + line.text
     puts "Length is : #{line.text.length}"
     puts ""
   end

doc = Nokogiri::HTML(open("http://www.ebay.com"))
# === using xpath
doc.xpath('//title').each do |line|
#doc.css('title').each do |line|
  puts ""
  puts "3 Ebay.com title is: " + line.text
  puts "Length is : #{line.text.length}"
  puts ""
end

doc = Nokogiri::HTML(open("http://www.apple.com"))
# === using xpath
doc.xpath('//title').each do |line|
#doc.css('title').each do |line|
  puts ""
  puts "4 Apple title is: " + line.text
  puts "Length is : #{line.text.length}"
  puts ""
end

# b.
puts "Using gem nokogiri and selector css do following"
# Open the following sites and display theirs title and it’s length

doc = Nokogiri::HTML(open("http://www.shopping.com"))
# === using xpath
 # doc.xpath('//title').each do |line|
doc.css('title').each do |line|
  puts ""
  puts "1 Shopping.com title is: " + line.text
  puts "Length is : #{line.text.length}"
  puts ""
end

doc = Nokogiri::HTML(open("http://www.yahoo.com"))
# === using xpath
#doc.xpath('//title').each do |line|
doc.css('title').each do |line|
  puts ""
  puts "2 Yahoo.com title is: " + line.text
  puts "Length is : #{line.text.length}"
  puts ""
end

doc = Nokogiri::HTML(open("http://www.ebay.com"))
# === using xpath
#doc.xpath('//title').each do |line|
doc.css('title').each do |line|
  puts ""
  puts "3 Ebay.com title is: " + line.text
  puts "Length is : #{line.text.length}"
  puts ""
end

doc = Nokogiri::HTML(open("http://www.apple.com"))
# === using xpath
#doc.xpath('//title').each do |line|
doc.css('title').each do |line|
  puts ""
  puts "4 Apple title is: " + line.text
  puts "Length is : #{line.text.length}"
  puts ""
end


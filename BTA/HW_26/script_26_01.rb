#============================================================================

require 'rest-open-uri'

require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.alegro.com/sdc.xml"))

# === using xpath
 doc.xpath('//server/orig-kw').each do |line|

#doc.css('server orig-kw').each do |line|

  puts ""

  puts "1 Original Keyword: " + line.text

end

# === retrieving server > engine

doc.css('server engine').each do |line|

  puts ""
  puts "2 Server name: " + line.text

end

# === retrieving server > country_id

doc.css('server country_id').each do |line|

  puts ""

  if line.text == "1" then

    puts "3 Country : US"

  elsif line.text == "44" then

    puts "3 Country : UK"

  elsif line.text == "250" then

    puts "3 Country : FR"

  elsif line.text == "276" then

    puts "3 Country : DE"

  elsif line.text == "36" then

    puts "3 Country : AU"

  else

    puts "3 Country : N/A"

  end

end

# === retrieving engine version

doc.css('server kadu-version').each do |line|

  puts ""
  puts "4 Engine version: " + line.text

end
# === retrieving engine index

doc.css('server kadu-index-info').each do |line|

  puts ""
  puts "5 Engine index: " + line.text

end
# === retrieving Name of the deal # 15

doc.css('deals deal[@xref="14"] name').each do |line|

  puts ""
  puts "6 Name of the deal # 15: " + line.text

end
# === retrieving engine index

doc.css('deals deal[@xref="14"] description').each do |line|

  puts ""
  puts "7 Description of the deal # 15: " + line.text
  puts ""
  puts "7a  Length is : #{line.text.length}"

end
# === retrieving Price of the deal # 15

doc.css('deals deal[@xref="14"] price').each do |line|

  puts ""
  puts "8 Price of the deal # 15: " + line.text

end
# === retrieving URL of the deal # 15

doc.css('deals deal[@xref="14"] url').each do |line|

  puts ""
  puts "9 URL of the deal # 15: " + line.text

end
# === retrieving Product-id of the deal # 15

doc.css('deals deal[@xref="14"] product-id').each do |line|

  puts ""
  puts "10 Product-id of the deal # 15: " + line.text

end


#========================================
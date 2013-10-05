require 'mechanize'

agent = Mechanize.new
page = agent.get('http://www.htmlcodes.me')
title = page.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{page.body.size} bytes"

#=======================================
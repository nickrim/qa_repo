

# a.      Display the list of ALL links

#==============================================
require 'mechanize'

agent = Mechanize.new
page = agent.get('http://www.htmlcodes.me')

 puts ""
 puts "= LIST OF ALL LINKS ="
 page.links.each do |link|
  puts link.text

end

#==================================================
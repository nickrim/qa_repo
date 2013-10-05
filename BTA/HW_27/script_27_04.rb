#==================================================

require 'mechanize'

agent = Mechanize.new
agent.get('http://www.google.com/') do |page|
  search_result = page.form_with(:name => 'f') do |search|
    search.q = 'Quality Assurance'
  end.submit
  search_result.links.each do |link|
    puts link.text
  end
end

#=================================================
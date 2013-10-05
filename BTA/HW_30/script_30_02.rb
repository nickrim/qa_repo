#==========================================================================
require 'watir-webdriver'
browser = Watir::Browser.new :firefox

#==========================================================================
#browser = Watir::Browser.new :ie
#browser = Watir::Browser.new :chrome
#browser = Watir::Browser.new :safari
#==========================================================================
browser.driver.manage.timeouts.implicit_wait = 5
#==========================================================================
url = "http://www.bing.com"
query = "SQA"

#==========================================================================
browser.goto url
puts "========================================"
puts "Title of bing.com: #{browser.title}"
puts "URL of bing.com: #{browser.url}"

#==========================================================================
browser.screenshot.save "bing_01.png"
browser.text_field(:id, "sb_form_q").set query
browser.button(:id, "sb_form_go").click

#==========================================================================
browser.screenshot.save "bing_02.png"
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"

# ==========================================
browser.link(:text => "SQA | Home").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_03.png"

#==========================================================================
browser.link(:text => "Join SQA").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_04.png"

#==========================================================================
browser.link(:text => "Advertising Opportunities").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_05.png"

#===========================================================================
browser.link(:text => "Privacy Policy").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_06.png"
#===========================================================================
browser.link(:text => "Site Map").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_08.png"

#===========================================================================
browser.link(:text => "Contact Us").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_09.png"

#===========================================================================
browser.link(:text => "Home").click
puts "========================================"
puts "Title of result page: #{browser.title}"
puts "URL of result page: #{browser.url}"
browser.screenshot.save "bing_010.png"

#===========================================================================
browser.close

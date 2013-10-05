#==========================================================================
 require 'watir-webdriver'
browser = Watir::Browser.new :firefox

#==========================================================================
 #browser = Watir::Browser.new :ie
 #browser = Watir::Browser.new :chrome
 #browser = Watir::Browser.new :safari
#==========================================================================
 browser.driver.manage.timeouts.implicit_wait = 25
#==========================================================================
 url = "http://www.bing.com"
 query = "What is Selenium?"
 #==========================================================================
browser.goto url
puts "1 ========================================"
puts "Title of bing.com: #{browser.title}"
puts "URL of bing.com: #{browser.url}"
browser.screenshot.save "bing_01.png"
browser.text_field(:id, "sb_form_q").set query
browser.button(:id, "sb_form_go").click
 #==========================================================================
browser.screenshot.save "bing_02.png"
browser.link(:text => /eHow - eHow/).click
browser.screenshot.save "bing_03.png"
puts "2 ========================================"
puts "Title of eHow.com page: #{browser.title}"
puts "URL of eHow.com page: #{browser.url}"
#==========================================================================
browser.link(:href => 'http://www.ehow.com/about-us.html').click
browser.screenshot.save "bing_03.png"
puts "3 ========================================"
puts "Title of About eHow page: #{browser.title}"
puts "URL of About eHow page: #{browser.url}"
#==========================================================================
browser.link(:href => 'http://www.ehow.com/how-to.html').click
browser.screenshot.save "bing_04.png"
puts "4 ========================================"
puts "Title of How to by Topic page: #{browser.title}"
puts "URL of How to by Topic page: #{browser.url}"
puts "========================================"
#==========================================================================
browser.link(:href => 'http://www.ehow.com/videos.html').click
browser.screenshot.save "bing_05.png"
puts "5 ========================================"
puts "Title of Videos page: #{browser.title}"
puts "URL of Videos page: #{browser.url}"
puts "========================================"

#==========================================================================
browser.link(:href => 'http://www.ehow.com/site-map.html').click
browser.screenshot.save "bing_06.png"
puts "6 ========================================"
puts "Title of Sitemap page: #{browser.title}"
puts "URL of Sitemap page: #{browser.url}"
puts "========================================"

browser.close



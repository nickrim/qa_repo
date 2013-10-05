#==========================================================================
require 'selenium-webdriver'
#==========================================================================
# 'browser' - variable can be changed (переменная - можно поменять)
#========================================================================== 
browser = Selenium::WebDriver.for :firefox
browser.manage.timeouts.implicit_wait = 15
#========================================================================== 
url = "http://www.bing.com"
query = "SQA"
#========================================================================== 
browser.navigate.to url
#========================================================================== 
puts "Title of the Bing.com Page \t: #{browser.title}"
element = browser.find_element(:id, 'sb_form_q')
element.send_keys query
browser.find_element(:id, 'sb_form_go').click
puts "========================================"

#========================================================================== 
result_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the Bing.com Result Page \t\t\t: #{result_page_title.text}"
browser.save_screenshot "1.png"
puts "========================================"

#========================================================================== 
browser.find_element(:link_text, "SQA | Home").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Home \t\t\t: #{new_page_title.text}"
browser.save_screenshot "2.png"
puts "========================================"

#========================================================================== 
browser.find_element(:partial_link_text, "Join SQA").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Join SQA: \t\t\t: #{new_page_title.text}"
browser.save_screenshot "3.png"
puts "========================================"

#========================================================================== 
browser.find_element(:partial_link_text, "Advertising Opportunities").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Advertising Opportunities: \t: #{new_page_title.text}"
browser.save_screenshot "4.png"
puts "========================================"

#========================================================================== 
browser.find_element(:partial_link_text, "Privacy Policy").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Privacy Policy: \t\t: #{new_page_title.text}"
browser.save_screenshot "5.png"
puts "========================================"

browser.find_element(:partial_link_text, "Site Map").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Site Map: \t\t\t: #{new_page_title.text}"
browser.save_screenshot "6.png"
puts "========================================"

browser.find_element(:partial_link_text, "Contact Us").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Contact Us: \t\t\t: #{new_page_title.text}"
browser.save_screenshot "7.png"
puts "========================================"

browser.find_element(:partial_link_text, "Search").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of result page SQA | Search: \t\t\t: #{new_page_title.text}"
browser.save_screenshot "8.png"
puts "========================================"


browser.quit
#==========================================================================
 
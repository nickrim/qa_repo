#==========================================================================
require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.manage.timeouts.implicit_wait = 15

url = "http://www.bing.com"
query = "What is Selenium?"

browser.navigate.to url
puts ""
puts "Title of the Bing.com Page \t\t\t: #{browser.title}"

element = browser.find_element(:id, 'sb_form_q')
element.send_keys query
browser.find_element(:id, 'sb_form_go').click

#result_page_title = browser.find_element(:tag_name,"title")
#puts "Title of the Bing.com Result Page \t\t: #{result_page_title}"
#browser.save_screenshot "1.png"

browser.find_element(:partial_link_text, "What Is Selenium? | eHow ").click

#new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com Page \t\t\t: #{browser.title}"
browser.save_screenshot "2.png"
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com Page \t\t\t: #{new_page_title.text}"
browser.save_screenshot "1-2.png"

browser.find_element(:partial_link_text, "About eHow").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com About Page \t\t: #{new_page_title.text}"
browser.save_screenshot "1-3.png"

browser.find_element(:partial_link_text, "eHow Blog").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com Blog Page \t\t: #{new_page_title.text}"
browser.save_screenshot "1-4.png"

browser.find_element(:partial_link_text, "How to by Topic").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com How to by Topic Page \t: #{new_page_title.text}"
browser.save_screenshot "1-5.png"

browser.find_element(:partial_link_text, "How to Videos").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com How to Videos Page \t: #{new_page_title.text}"
browser.save_screenshot "1-6.png"

browser.find_element(:partial_link_text, "Sitemap").click
new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com Sitemap Page \t\t: #{new_page_title.text}"
#browser.save_screenshot "1-7.png

#browser.quit

#============================================
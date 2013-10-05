require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.manage.timeouts.implicit_wait = 15

address = "http://www.bing.com"
query = "What is Selenium?"

browser.navigate.to address

puts "Title of the Bing.com Page \t\t\t: #{browser.title}"
pole = browser.find_element(:id, 'sb_form_q')
pole.send_keys query
browser.find_element(:id, 'sb_form_go').click

result_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the Bing.com Result Page \t\t: #{result_page_title.text}"
browser.save_screenshot "1-1.png"

browser.find_element(:link_text, "What Is Selenium? | eHow.com").click

new_page_title = browser.find_element(:tag_name, 'title')
puts "Title of the eHow.com Page \t\t\t: #{new_page_title.text}"
browser.save_screenshot "1-2.png"
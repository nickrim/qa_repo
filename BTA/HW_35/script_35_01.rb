BEGIN{
  puts
  name = "Nick Krimnus"
  description = "Test cases automation on application Sign Up v3 "

  puts "====================================="
  puts
  puts "Author \s\s\s\s\s : " + name
  puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0 .. 18]
  puts "OS \s\s\s\s\s\s\s\s\s :" + RUBY_PLATFORM
  puts
  puts "Ruby version : " + RUBY_VERSION
  puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop
  puts "Description \s: " + description
  puts
  puts "===================================== "
  puts
}

# ======================================================================
require "watir-webdriver"

browser = Watir::Browser.new :firefox
browser.driver.manage.timeouts.implicit_wait = 5

url = 'http://khatilov.com/qa/apps/sign_up/v3/'

puts "\n\n"
browser.goto url
puts "Title: #{browser.title}"
puts browser.url

puts "\n\n"

puts "============================================"
puts "========================="
# = Test Case: WEB site title verification

if browser.title == "Sign Up"
  puts "TEST CASE TC-01.01: WEB site title verification  - PASS"
else
  puts "TEST CASE TC-01.01: WEB site title verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Quote existence verification

if browser.td(:id => "id_quotes").exists? and browser.td(:id => "id_quotes").text.size > 1
  puts "TEST CASE TC-01.02: Quote existence verification  - PASS"
else
  puts "TEST CASE TC-01.02: Quote existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Facebook image existence verification

if browser.image(:src => "./facebook.png").exists?
  puts "TEST CASE TC-01.03: Facebook image existence verification  - PASS"
else
  puts "TEST CASE TC-01.03: Facebook image existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Twitter image existence verification

if browser.image(:src => "./twitter.png").exists?
  puts "TEST CASE TC-01.04: Twitter image existence verification  - PASS"
else
  puts "TEST CASE TC-01.04: Twitter image existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Flickr image existence verification

if browser.image(:src => "./flickr.png").exists?
  puts "TEST CASE TC-01.05: Flickr image existence verification  - PASS"
else
  puts "TEST CASE TC-01.05: Flickr image existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: YouTube image existence verification

if browser.image(:src => "./youtube.png").exists?
  puts "TEST CASE TC-01.06: YouTube image existence verification  - PASS"
else
  puts "TEST CASE TC-01.06: YouTube image existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: First Name field existence verification

if browser.text_field(:id => "id_fname").exists?
  puts "TEST CASE TC-01.07: First Name field existence verification  - PASS"
else
  puts "TEST CASE TC-01.07: First Name field existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Last Name field existence verification

if browser.text_field(:id => "id_lname").exists?
  puts "TEST CASE TC-01.08: Last Name field existence verification  - PASS"
else
  puts "TEST CASE TC-01.08: Last Name field existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Email Address field existence verification

if browser.text_field(:id => "id_email").exists?
  puts "TEST CASE TC-01.09: Email Address field existence verification  - PASS"
else
  puts "TEST CASE TC-01.09: Email Address field existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Phone Number field existence verification

if browser.text_field(:id => "id_phone").exists?
  puts "TEST CASE TC-01.10: Phone Number field existence verification  - PASS"
else
  puts "TEST CASE TC-01.10: Phone Number field existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Male radio button existence verification

if browser.radio(:id => "id_g_radio_01").exists?
  puts "TEST CASE TC-01.11: Male radio button existence verification  - PASS"
else
  puts "TEST CASE TC-01.11: Male radio button existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Female radio button existence verification

if browser.radio(:id => "id_g_radio_02").exists?
  puts "TEST CASE TC-01.12: Female radio button existence verification  - PASS"
else
  puts "TEST CASE TC-01.12: Female radio button existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: State field existence verification

if browser.select_list(:id => "id_state").exists?
  puts "TEST CASE TC-01.13: State field existence verification  - PASS"
else
  puts "TEST CASE TC-01.13: State field existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Terms checkbox existence verification

if browser.checkbox(:id => "id_checkbox").exists?
  puts "TEST CASE TC-01.14: Terms checkbox existence verification  - PASS"
else
  puts "TEST CASE TC-01.14: Terms checkbox existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Reset button existence verification

if browser.button(:id => "id_reset_button").exists?
  puts "TEST CASE TC-01.15: Reset button existence verification  - PASS"
else
  puts "TEST CASE TC-01.15: Reset button existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Submit button existence verification

if browser.button(:id => "id_submit_button").exists?
  puts "TEST CASE TC-01.16: Submit button existence verification  - PASS"
else
  puts "TEST CASE TC-01.16: Submit button existence verification - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Last update existence verification

if browser.td(:id => "lastupdate").exists? and browser.td(:id => "lastupdate").text.size > 1
  puts "TEST CASE TC-01.17: Last update existence verification  - PASS"
else
  puts "TEST CASE TC-01.17: Last update existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Copyright existence verification

if browser.td(:id => "copyright").exists? and browser.td(:id => "copyright").text.size > 1
  puts "TEST CASE TC-01.18: Copyright existence verification  - PASS"
else
  puts "TEST CASE TC-01.18: Copyright existence verification  - FAIL"
end

puts "============================================"
puts "========================="
# = Test Case: Rubygems link existence verification

if browser.link(:id => "id_link_rubygems").exists?
  puts "TEST CASE TC-01.19: Rubygems link existence verification  - PASS"
else
  puts "TEST CASE TC-01.19: Rubygems link existence verification  - FAIL"
end
puts "============================================"
puts "========================="
# = Test Case: Page title existence verification

if browser.link(:id => "id_f_title").exists?
  puts "TEST CASE TC-01.20: Page title existence verification  - PASS"
else
  puts "TEST CASE TC-01.20: Page title existence verification  - FAIL"
end

puts "\n\n"


browser.close
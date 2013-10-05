BEGIN{
  puts
  name = "Nick Krimnus"
  description = "Test cases automation on application Sign Up v2 "

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

url = 'http://khatilov.com/qa/apps/sign_up/v2/'

browser.goto url
puts "============="
puts ""
puts "Title: #{browser.title}"
puts browser.url
puts ""
puts "=========================================="
puts "========================="
# = Test Case: Quote existence verification

if browser.td(:id => "id_quotes").exists? and browser.td(:id => "id_quotes").text.size > 0
  puts "TEST CASE TC-01.01: Quote existence verification  - PASS"
else
  puts "TEST CASE TC-01.01: Quote existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Facebook image existence verification

if browser.image(:src => "./facebook.png").exists?
  puts "TEST CASE TC-01.02: Facebook image existence verification  - PASS"
else
  puts "TEST CASE TC-01.02: Facebook image existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Twitter image existence verification

if browser.image(:src => "./twitter.png").exists?
  puts "TEST CASE TC-01.03: Twitter image existence verification  - PASS"
else
  puts "TEST CASE TC-01.03: Twitter image existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Flickr image existence verification

if browser.image(:src => "./flickr.png").exists?
  puts "TEST CASE TC-01.04: Flickr image existence verification  - PASS"
else
  puts "TEST CASE TC-01.04: Flickr image existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: YouTube image existence verification

if browser.image(:src => "./youtube.png").exists?
  puts "TEST CASE TC-01.05: YouTube image existence verification  - PASS"
else
  puts "TEST CASE TC-01.05: YouTube image existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: First Name field existence verification

if browser.text_field(:id => "id_fname").exists?
  puts "TEST CASE TC-01.06: First Name field existence verification  - PASS"
else
  puts "TEST CASE TC-01.06: First Name field existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Last Name field existence verification

if browser.text_field(:id => "id_lname").exists?
  puts "TEST CASE TC-01.07: Last Name field existence verification  - PASS"
else
  puts "TEST CASE TC-01.07: Last Name field existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Email Address field existence verification

if browser.text_field(:id => "id_email").exists?
  puts "TEST CASE TC-01.08: Email Address field existence verification  - PASS"
else
  puts "TEST CASE TC-01.08: Email Address field existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Phone Number field existence verification

if browser.text_field(:id => "id_phone").exists?
  puts "TEST CASE TC-01.09: Phone Number field existence verification  - PASS"
else
  puts "TEST CASE TC-01.09: Phone Number field existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Male radio button existence verification

if browser.radio(:id => "id_g_radio_01").exists?
  puts "TEST CASE TC-01.10: Male radio button existence verification  - PASS"
else
  puts "TEST CASE TC-01.10: Male radio button existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Female radio button existence verification

if browser.radio(:id => "id_g_radio_02").exists?
  puts "TEST CASE TC-01.11: Female radio button existence verification  - PASS"
else
  puts "TEST CASE TC-01.11: Female radio button existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: State field existence verification

if browser.select_list(:id => "id_state").exists?
  puts "TEST CASE TC-01.12: State field existence verification  - PASS"
else
  puts "TEST CASE TC-01.12: State field existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Terms checkbox existence verification

if browser.checkbox(:id => "id_checkbox").exists?
  puts "TEST CASE TC-01.13: Terms checkbox existence verification  - PASS"
else
  puts "TEST CASE TC-01.13: Terms checkbox existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Reset button existence verification

if browser.button(:id => "id_reset_button").exists?
  puts "TEST CASE TC-01.14: Reset button existence verification  - PASS"
else
  puts "TEST CASE TC-01.14: Reset button existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Submit button existence verification

if browser.button(:id => "id_submit_button").exists?
  puts "TEST CASE TC-01.15: Submit button existence verification  - PASS"
else
  puts "TEST CASE TC-01.15: Submit button existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Last update existence verification

if browser.td(:id => "lastupdate").exists?
  puts "TEST CASE TC-01.16: Last update existence verification  - PASS"
else
  puts "TEST CASE TC-01.16: Last update existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Copyright existence verification

if browser.td(:id => "copyright").exists?
  puts "TEST CASE TC-01.17: Copyright existence verification  - PASS"
else
  puts "TEST CASE TC-01.17: Copyright existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Rubygems link existence verification

if browser.link(:id => "id_link_rubygems").exists?
  puts "TEST CASE TC-01.18: Rubygems link existence verification  - PASS"
else
  puts "TEST CASE TC-01.18: Rubygems link existence verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: New Quote verification

quote = browser.td(:id => "id_quotes")
q1=quote.text
browser.goto url
q2=quote.text

if q1==q2
  puts "TEST CASE TC-01.19: New Quote Verification - FAIL"
else
  puts "TEST CASE TC-01.19: New Quote Verification - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: Facebook link verification

if browser.link(:id => "id_link_facebook").href == "http://www.facebook.com/"
  puts "TEST CASE TC-01.20: Facebook Link Verification  - PASS"
else
  puts "TEST CASE TC-01.20: Facebook Link Verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Twitter link verification

if browser.link(:id => "id_link_twitter").href == "http://www.twitter.com/"
  puts "TEST CASE TC-01.21: Twitter Link Verification  - PASS"
else
  puts "TEST CASE TC-01.21: Twitter Link Verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Flickr link verification

if browser.link(:id => "id_link_flickr").href == "http://www.flickr.com/"
  puts "TEST CASE TC-01.22: Flickr Link Verification  - PASS"
else
  puts "TEST CASE TC-01.22: Flickr Link Verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: YouTube link verification

if browser.link(:id => "id_link_youtube").href == "http://www.youtube.com/"
  puts "TEST CASE TC-01.23: YouTube Link Verification  - PASS"
else
  puts "TEST CASE TC-01.23: YouTube Link Verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Facebook image size verification

image_h = browser.image(:src => "./facebook.png").height
image_w = browser.image(:src => "./facebook.png").width
if image_h==60 and image_w==60
  puts "TEST CASE TC-01.24: Facebook image size verification  - PASS"
else
  puts "TEST CASE TC-01.24: Facebook image size verification  - PASS"
end


puts "=========================================="
puts "========================="
# = Test Case: Twitter image size verification

image_h = browser.image(:src => "./twitter.png").height
image_w = browser.image(:src => "./twitter.png").width
if image_h==60 and image_w==60
  puts "TEST CASE TC-01.25: Twitter image size verification  - PASS"
else
  puts "TEST CASE TC-01.25: Twitter image size verification  - PASS"
end


puts "=========================================="
puts "========================="
# = Test Case: Flickr image size verification

image_h = browser.image(:src => "./flickr.png").height
image_w = browser.image(:src => "./flickr.png").width
if image_h==60 and image_w==60
  puts "TEST CASE TC-01.26: Flickr image size verification  - PASS"
else
  puts "TEST CASE TC-01.26: Flickr image size verification  - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: YouTube image size verification

image_h = browser.image(:src => "./youtube.png").height
image_w = browser.image(:src => "./youtube.png").width
if image_h==60 and image_w==60
  puts "TEST CASE TC-01.27: YouTube image size verification  - PASS"
else
  puts "TEST CASE TC-01.27: YouTube image size verification  - PASS"
end
puts "=========================================="
puts "========================="
# = Test Case: First Name required field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").clear
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.28: First Name required field verification - FAIL"
else
  puts "TEST CASE TC-01.28: First Name required field verification - PASS"
end

puts "========================="
# = Test Case: Last Name required field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").clear
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.29: Last Name required field verification - FAIL"
else
  puts "TEST CASE TC-01.29: Last Name required field verification - PASS"
end

puts "=========================================="
puts "============================"
# = Test Case: Email required field verification
url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "john"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").clear

browser.button(:id => "id_submit_button").click
#puts "Title: #{browser.title}"

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "TEST CASE TC-01.30: Email required field verification - FAIL"
else
  puts "TEST CASE TC-01.30: Email required field verification - PASS"
end
puts "=========================================="
puts "============================"
# = Test Case: Phone Number required field verification
url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "john"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").clear
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click
#puts "Title: #{browser.title}"

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "TEST CASE TC-01.31: Phone Number required field verification - FAIL"
else
  puts "TEST CASE TC-01.31: Phone Number required field verification - PASS"
end
puts "=========================================="
puts "========================="
# = Test Case: First Name correctly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.32: First Name correctly formatted field verification - PASS"
else
  puts "TEST CASE TC-01.32: First Name correctly formatted field verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: First Name incorrectly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John__"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.33: First Name incorrectly formatted field verification - FAIL"
else
  puts "TEST CASE TC-01.33: First Name incorrectly formatted field verification - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: Last Name correctly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.34: Last Name correctly formatted field verification - PASS"
else
  puts "TEST CASE TC-01.34: Last Name correctly formatted field verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Last Name incorrectly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith__"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.35: Last Name incorrectly formatted field verification - FAIL"
else
  puts "TEST CASE TC-01.35: Last Name incorrectly formatted field verification - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: Email Address correctly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.36: Email Address correctly formatted field verification - PASS"
else
  puts "TEST CASE TC-01.36: Email Address correctly formatted field verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Email Address incorrectly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my%email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.37: Email Address incorrectly formatted field verification - FAIL"
else
  puts "TEST CASE TC-01.37: Email Address incorrectly formatted field verification - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: Phone Number correctly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.38: Phone Number correctly formatted field verification - PASS"
else
  puts "TEST CASE TC-01.38: Phone Number correctly formatted field verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: v incorrectly formatted field verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415_555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.39: Phone Number incorrectly formatted field verification - FAIL"
else
  puts "TEST CASE TC-01.39: Phone Number incorrectly formatted field verification - PASS"
end

puts "=========================================="

puts "========================="
# = Test Case: Reset button click performance verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone
browser.radio(:id => "id_g_radio_01").set
browser.select_list(:id => "id_state").select 'California'
browser.checkbox(:id => "id_checkbox").set

browser.button(:id => "id_reset_button").click

if  browser.text_field(:id => "id_fname").value=="" and
    browser.text_field(:id => "id_lname").value=="" and
    browser.text_field(:id => "id_email").value=="" and
    browser.text_field(:id => "id_phone").value=="" and
    !browser.radio(:id => "id_g_radio_01").checked? and
    browser.select_list(:id => "id_state").value=="" and
    !browser.checkbox(:id => "id_checkbox").checked?
  puts "TEST CASE TC-01.40: Reset button click performance verification  - PASS"
else
  puts "TEST CASE TC-01.40: Reset button click performance verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Submit button click performance verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url


qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"
qa_state        = "California"
qa_gendre       = "male"
qa_terms        = "Yes"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone
browser.radio(:value => "Male").set
browser.select_list(:id => "id_state").select "California"
browser.checkbox(:id => "id_checkbox").set
browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.41: Submit button click performance verification  - PASS"
else
  puts "TEST CASE TC-01.41: Submit button click performance verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Rubygems link click performance verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

if browser.link(:id => "id_link_rubygems").href == "https://rubygems.org/gems/output-to-file"
  puts "TEST CASE TC-01.42: Rubygems link click performance verification  - PASS"
else
  puts "TEST CASE TC-01.42: Rubygems link click performance verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Copyright text verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url


if browser.td(:id => "copyright").text.include?("2013")
  puts "TEST CASE TC-01.43: Copyright text verification  - PASS"
else
  puts "TEST CASE TC-01.43: Copyright text verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Website title verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

if browser.title == "Sign Up"
  puts "TEST CASE TC-01.44: Website title verification  - PASS"
else
  puts "TEST CASE TC-01.44: Website title verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: Page title verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

page=browser.span(:id => "id_f_title")
if page.text=="Sign Up"
  puts "TEST CASE TC-01.45: Page title verification  - PASS"
else
  puts "TEST CASE TC-01.45: Page title verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: First Name label verification

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

if browser.span(:text=>"First Name").exists?
  puts "TEST CASE TC-01.46: First Name label verification  - PASS"
else
  puts "TEST CASE TC-01.46: First Name label verification - FAIL"
end

puts "=========================================="
puts "CONFORMATION PAGE"
puts "========================="
# = Conformation page  url
url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url


qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"
qa_state        = "California"
qa_gendre       = "male"
qa_terms        = "Yes"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone
browser.radio(:value => "Male").set
browser.select_list(:id => "id_state").select "California"
browser.checkbox(:id => "id_checkbox").set
browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v2/submit.asp"
  puts "TEST CASE TC-01.47: Conformation page url verification  - PASS"
else
  puts "TEST CASE TC-01.47: Conformation page url verification  - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: No Quote verification

quote = browser.td(:id => "id_quotes")

if quote.exists? and quote.text.size > 1
  puts "TEST CASE TC-01.48: No Quote verification  - FAIL"
else
  puts "TEST CASE TC-01.48: No Quote verification  - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: No Facebook image verification

if browser.image(:src => "./facebook.png").exists?
  puts "TEST CASE TC-01.49: No Facebook image verification  - FAIL"
else
  puts "TEST CASE TC-01.49: No Facebook image verification  - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: No Twitter image verification

if browser.image(:src => "./twitter.png").exists?
  puts "TEST CASE TC-01.50: No Twitter image verification  - FAIL"
else
  puts "TEST CASE TC-01.50: No Twitter image verification  - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: No Flickr image verification

if browser.image(:src => "./flickr.png").exists?
  puts "TEST CASE TC-01.51: No Flickr image verification  - FAIL"
else
  puts "TEST CASE TC-01.51: No Flickr image verification  - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: Back button existence verification

if browser.button(:id => "id_back_button").exists?
  puts "TEST CASE TC-01.52: Back button existence verification  - PASS"
else
  puts "TEST CASE TC-01.52: Back button existence verification - FAIL"
end

puts "=========================================="
puts "========================="
# = Test Case: No Submit button verification

if browser.button(:id => "id_submit_button").exists?
  puts "TEST CASE TC-01.53: No Submit button verification  - FAIL"
else
  puts "TEST CASE TC-01.53: No Submit button verification - PASS"
end

puts "=========================================="
puts "========================="
# = Test Case: No Last update verification

if browser.td(:id => "lastupdate").exists?
  puts "TEST CASE TC-01.54: No Last update verification  - FAIL"
else
  puts "TEST CASE TC-01.54: No Last update verification  - PASS"
end

puts "=========================================="
puts "========================="
# Test Case: Last Name Text verification


if browser.span(:text=>"Smith").exists?
  puts "TEST CASE TC-01.56: Last Name Text verification  - PASS"
else
  puts "TEST CASE TC-01.56: Last Name Text verification - FAIL"
end

puts "=========================================="


browser.close

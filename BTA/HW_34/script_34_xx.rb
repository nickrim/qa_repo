require "watir-webdriver"

browser = Watir::Browser.new :firefox
browser.driver.manage.timeouts.implicit_wait = 5
puts "======================="

url = 'http://khatilov.com/qa/apps/sign_up/v1/'
browser.goto url

qa_f_name      = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").clear
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "TEST CASE TC-01.01: First Name required field verification - FAIL"
else
  puts "TEST CASE TC-01.01: First Name required field verification - PASS"
end

puts "======================="

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

#qa_f_name      = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").clear
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "TEST CASE TC-01.02 using- V2: First Name required field verification - FAIL"
else
  puts "TEST CASE TC-01.02 using- V2: First Name required field verification - PASS"
end
puts "======================="

url = 'http://khatilov.com/qa/apps/sign_up/v1/'
browser.goto url

qa_f_name      = "john"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "TEST CASE TC-01.03: First Name required first letter Upper case  verification - FAIL"
else
  puts "TEST CASE TC-01.03: First Name required first letter Upper case verification - PASS"
end

puts "======================="

url = 'http://khatilov.com/qa/apps/sign_up/v2/'
browser.goto url

qa_f_name      = "john"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone

browser.button(:id => "id_submit_button").click

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "TEST CASE TC-01.04 using- V2: First Name required first letter Upper case verification - FAIL"
else
  puts "TEST CASE TC-01.04 using- V2: First Name required first letter Upper case verification - PASS"
end
puts "======================="

browser.close
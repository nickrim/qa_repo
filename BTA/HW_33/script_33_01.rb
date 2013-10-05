# ======================================================================
require "watir-webdriver"
browser = Watir::Browser.new :firefox
browser.driver.manage.timeouts.implicit_wait = 5

# ======================================================================
# browser.window.move_to(0, 0)
# browser.window.resize_to(1000, 800)
# browser.cookies.clear

# ======================================================================
url = ' http://khatilov.com/qa/apps/sign_up/v1/'
# url = ' http://khatilov.com/qa/apps/sign_up/v2/'

# ======================================================================
browser.goto url
# ======================================================================
puts "===================================================="
puts "Title: #{browser.title}"
puts browser.url
puts "===================================================="
# ======================================================================
puts "===================================================="

# = Test Case: Title verification ======================================

if browser.title == "Sign Up"
  puts "Test Case: Title verification - Passed!"
else
  puts "Test Case: Title verification - Failed!"
end
puts "===================================================="
# ======================================================================

# = Test Case: First Name field verification ===========================

if browser.text_field(:id => "id_fname").exists?
  puts "Test Case: First Name field verification  - Passed!"
else
  puts "Test Case: First Name field verification - Failed!"
end

browser.screenshot.save 'tc_02.png'
puts "===================================================="
# ======================================================================
puts "= Links Verification ==============================="
puts "==== Facebook ======================================"
# = Test Case: Facebook link verification ==============================

if browser.link(:id => "id_link_facebook").href == "http://www.facebook.com/"
  puts "Test Case: Facebook Link verification  - Passed!"
else
  puts "Test Case: Link verification - Failed!"
  actual_link_href = browser.link(:id => "id_link_facebook").href
  puts "Expected: http://www.facebook.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
browser.screenshot.save 'tc_03.png'
puts "==== Twitter ======================================"
# = Test Case: Twitter link verification ==============================

if browser.link(:id => "id_link_twitter").href == "http://www.twitter.com/"
  puts "Test Case: Twitter Link verification  - Passed!"
else
  puts "Test Case: Link verification - Failed!"
  actual_link_href = browser.link(:id => "id_link_twitter").href
  puts "Expected: http://www.twitter.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
puts "==== Flickr ======================================"
# = Test Case: Flickr link verification ==============================

if browser.link(:id => "id_link_flickr").href == "http://www.flickr.com/"
  puts "Test Case: Flickr Link verification  - Passed!"
else
  puts "Test Case: Link verification - Failed!"
  actual_link_href = browser.link(:id => "id_link_flickr").href
  puts "Expected: http://www.flickr.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="
puts "==== Youtube ======================================"
# = Test Case: Youtube link verification ==============================

if browser.link(:id => "id_link_youtube").href == "http://www.youtube.com/"
  puts "Test Case: Facebook Link verification  - Passed!"
else
  puts "Test Case: Link verification - Failed!"
  actual_link_href = browser.link(:id => "d_link_youtube").href
  puts "Expected: http://www.youtube.com/ == Actual: #{actual_link_href}"
end

puts "===================================================="

# = Test Case: Facebook image verification =============================

# if browser.image(:alt => "Facebook").exists?
if browser.image(:src => "./facebook.png").exists?
  puts "Test Case: Facebook image verification  - Passed!"
  image_h = browser.image(:src => "./facebook.png").height
  image_w = browser.image(:src => "./facebook.png").width
  puts "Facebook Image dimensions: height #{image_h} and width #{image_w}"
else
  puts "Test Case: Facebook image verification - Failed!"
end
# ======================================================================

# = Test Case: Link verification =======================================

#if browser.link(:id => "id_link_rubygems").exists?
if browser.link(:text => "rubygems.org::output-to-file").exists?
  puts "Test Case: Rubygems Link verification  - Passed!"
  href = browser.link(:text => "rubygems.org::output-to-file").href
  puts "=================================================================="
  target = browser.link(:text => "rubygems.org::output-to-file").target
  puts "Link href: #{href} and Link target: #{target}"
else
  puts "Test Case: Rubygems Link verification - Failed!"
end

browser.screenshot.save 'tc_04.png'
puts "===================================================="
# ======================================================================
# = Test Case: Submit Button verification ==============================

if browser.button(:id => "id_submit_button").exists?
  puts "Test Case: Submit Button verification  - Passed!"
else
  puts "Test Case: Submit Button verification - Failed!"
end
browser.screenshot.save 'tc_05.png'
# ======================================================================
puts "===================================================="
# = Test Case: Copyright verification ==================================

if browser.text.include?("2013")
  puts "Test Case: Copyright verification  - Passed!"
else
  puts "Test Case: Copyright verification - Failed!"
  actual_copyright = browser.td(:id => "copyright").text
  puts "Expected:  c 2013 alegro.com == Actual: #{actual_copyright}"
end
browser.screenshot.save 'tc_06.png'
puts "===================================================="
# = Entering Data =======================================================

qa_f_name       = "John"
qa_l_name       = "Smith"
qa_email        = "my@email.com"
qa_phone        = "415 555-1212"
qa_state        = "California"
qa_gendre       = "male"
qa_terms        = "Yes"

# ======================================================================

browser.text_field(:id => "id_fname").set qa_f_name
browser.text_field(:id => "id_lname").set qa_l_name
browser.text_field(:id => "id_email").set qa_email
browser.text_field(:id => "id_phone").set qa_phone
browser.radio(:value => "Male").set
browser.select_list(:id => "id_state").select "California"
browser.checkbox(:id => "id_checkbox").set
browser.button(:id => "id_submit_button").click


# = Test Case: Submit Button verification ==============================

if browser.url=="http://www.alegro.com/qa/apps/sign_up/v1/submit.asp"
  puts "Test Case: Confirmation Page verification  - Passed!"
else
  puts "Test Case: Confirmation Page verification  - Failed"
end
puts "===================================================="
browser.screenshot.save 'tc_07.png'
#========================================================================
browser.close
#========================================================================



require 'mechanize'

agent = Mechanize.new
 page = agent.get('http://www.htmlcodes.me')
b_code = page.link_with(:text => 'Background Code').click
title = b_code.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{b_code.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
b_color = page.link_with(:text => 'Background Color').click
title = b_color.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{b_color.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
b_image = page.link_with(:text => 'Background Image').click
title = b_image.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{b_image.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
b_stretch = page.link_with(:text => 'Stretch Background').click
title = b_stretch.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{b_stretch.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
b_fixed = page.link_with(:text => 'Fixed Background').click
title = b_fixed.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{b_fixed.body.size} bytes"

#=================================
page = agent.get('http://www.htmlcodes.me')
cod_marquee = page.link_with(:text => 'Marquee Codes').click
title = cod_marquee.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{cod_marquee.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
sc_text = page.link_with(:text => 'Scrolling Text').click
title = sc_text.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{sc_text.body.size} bytes"

#=================================
page = agent.get('http://www.htmlcodes.me')
sc_images = page.link_with(:text => 'Scrolling Images').click
title = sc_images.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{sc_images.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
st_marquee = page.link_with(:text => 'Stop Marquee').click
title = st_marquee.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{st_marquee.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
sp_marquee = page.link_with(:text => 'Marquee Speed').click
title = sp_marquee.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{sp_marquee.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
html_codes = page.link_with(:text => 'HTML Color Codes').click
title = html_codes.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{html_codes.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
html_chart = page.link_with(:text => 'HTML Color Chart').click
title = html_chart.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{html_chart.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
html_picker = page.link_with(:text => 'HTML Color Picker').click
title = html_picker.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{html_picker.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
html_tester = page.link_with(:text => 'HTML Color Tester').click
title = html_tester.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{html_tester.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
co_cod_gener = page.link_with(:text => 'Color Code Generator').click
title = co_cod_gener.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{co_cod_gener.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
html_links = page.link_with(:text => 'HTML Links').click
title = html_links.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{html_links.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
css_links = page.link_with(:text => 'CSS Links').click
title = css_links.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{css_links.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
js_links = page.link_with(:text => 'JavaScript Links').click
title =js_links.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{js_links.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
e_links = page.link_with(:text => 'Email Links').click
title = e_links.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{e_links.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
css_cursor = page.link_with(:text => 'CSS Cursor').click
title = css_cursor.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{css_cursor.body.size} bytes"



#=================================
#=================================
page = agent.get('http://www.htmlcodes.me')
text_code = page.link_with(:text => 'Text Code').click
title = text_code.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{text_code.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
font_code = page.link_with(:text => 'Font Code').click
title = font_code.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{font_code.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
text_color = page.link_with(:text => 'Text Color').click
title = text_color.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{text_color.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
line_height = page.link_with(:text => 'Line Height').click
title = line_height.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{line_height.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
letter_sp = page.link_with(:text => 'Letter Spacing').click
title =letter_sp.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{letter_sp.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
word_sp = page.link_with(:text => 'Word Spacing').click
title = word_sp.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{word_sp.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
ov_text = page.link_with(:text => 'Overlapping Text').click
title = ov_text.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{ov_text.body.size} bytes"



#=================================
#=================================

page = agent.get('http://www.htmlcodes.me')
tx_code = page.link_with(:text => 'HTML Textbox Code').click
title = tx_code.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{tx_code.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
tx_color = page.link_with(:text => 'Textbox Color').click
title =tx_color.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{tx_color.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
tx_border = page.link_with(:text => 'Textbox Border').click
title = tx_border.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{tx_border.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
tx_image = page.link_with(:text => 'Textbox Image').click
title = tx_image.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{tx_image.body.size} bytes"

#=================================
#==================================

page = agent.get('http://www.htmlcodes.me')
image_code = page.link_with(:text => 'HTML Image Code').click
title = image_code.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{image_code.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
css_code = page.link_with(:text => 'CSS Image Code').click
title = css_code.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{css_code.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
link_image = page.link_with(:text => 'Link Image').click
title = link_image.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{link_image.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
rep_image = page.link_with(:text => 'Repeat Image').click
title =rep_image.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{rep_image.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
im_border = page.link_with(:text => 'Image Border').click
title = im_border.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{im_border.body.size} bytes"

#=================================

page = agent.get('http://www.htmlcodes.me')
scro_image= page.link_with(:text => 'Scrolling Images').click
title = scro_image.search('title').inner_text

puts ""
puts "Title of the page: #{title}"
puts "Size  of the page: #{scro_image.body.size} bytes"



#=================================

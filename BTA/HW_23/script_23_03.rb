#Result should be: Yearly payment is: 19854.6 dollars

monthly_payment = "$1,654.55"

re = /(\d{1,3}(\,\d{3})*)(\.\d{2})/
result = monthly_payment.match re
result = result.to_s
result = result.gsub(/\,/,"").to_f
#puts result
result = result * 12

puts "Yearly payment is: #{result.to_s} dollars"
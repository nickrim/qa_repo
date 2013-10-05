#Result should be: Yearly payment is: 19854.6 dollars

monthly_payment = "$1,654.55"
monthly_payment = monthly_payment.reverse.chop.reverse.gsub(/\,/,"").to_f
#puts monthly_payment
yearly_payment = monthly_payment * 12
puts "Yearly payment is: #{yearly_payment} dollars"









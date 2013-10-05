#Result should be: Yearly payment is: 1,9854.6 dollars

monthly_payment = "$1,654.55"
monthly_payment = monthly_payment.reverse.chop.reverse.gsub(/\,/,"").to_f
#puts monthly_payment
yearly_payment = monthly_payment * 12
yearly_payment = yearly_payment.to_s.reverse.scan(/(\d*\.)?\d{1,3}/).join(',').reverse
puts "Yearly payment is: #{yearly_payment} dollars"

var = "12345678"

puts var.to_s.reverse.scan(/(\d*\.)?\d{1,3}/).join(',').reverse
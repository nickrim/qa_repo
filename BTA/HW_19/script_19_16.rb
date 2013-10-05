#	script_19_16.rb
#	Display if the following range true of false

#	1. 11 exists in the range from 1 to 10

range = 1..10
puts range===11

#	2. k exists in the range from a to z

range = ('a'..'z')
puts range.include?'k'

#	3. cat exists in the range from cab to caw

range = ('cab'..'cat')
puts range.include?'cat'

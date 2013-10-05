#	script_15_04.rb
#	Display result of the division operation (3 results: 1 - integer, 2 - float, 3 - rounded to 2 decimal) using following variables:  a, b

a = 10
b = 3

# Return integer
result = a/b
puts result

# Convert result to float

result = a/b.to_f
puts result

# Round float to 2 decimals
result = a/b.to_f
puts result.round(2)
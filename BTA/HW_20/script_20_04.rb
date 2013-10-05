#For array "week" provide following

puts "Data is inserted into array 'week': #{week = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]}"
#1. Display the class of the array
puts "Class of array 'week' is: #{week.class}"
#2. Display the size of the array
puts "Size of array 'week' is: #{week.size}"
#3. Display the first item of the array
puts "First item of array 'week' is: #{ week.first}"
#4. Display the last item of the array
puts "Lat item of array 'week' is: #{ week.last}"
#5. Sort this array in ascending order (a to z)
puts "Sorting (ASC) of array 'week' is: #{week.sort}"
#6. Sort this array in descending order (z to a)
puts "Sorting (DESC) of array 'week' is: #{week.sort{|a,b| b <=> a}}"
#7. Display this array in reverse order
puts "Sorting (REVERSE) of array 'week' is: #{week.reverse}"
#8. Display this array in shuffle order
puts "Sorting (SHUFFLE) of array 'week' is: #{week.shuffle}"
#9. Convert this array in to string and display it
puts "Converting array 'week' to string: #{week.to_s}"
#10. Removes all elements from this array
puts "Removing all elements from array 'week': #{week = []}"


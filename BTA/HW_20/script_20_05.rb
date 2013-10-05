#For array "months" provide following:
months = ["January", "February", "March","April", "May","June","July","August","September","October","November","December"]

#1. Display the class of the array
puts "Class of array 'months' is: #{months.class}"
#2. Display the size of the array
puts "Size of array 'months' is: #{months.size}"
#3. Display the first item of the array
puts "First item of array 'months' is: #{months.first}"
#4. Display the last item of the array
puts "Lat item of array 'months' is: #{months.last}"
#5. Sort this array in ascending order (a to z)
puts "Sorting (ASC) of array 'months' is: #{months.sort}"
#6. Sort this array in descending order (z to a)
puts "Sorting (DESC) of array 'months' is: #{months.sort{|a,b| b <=> a}}"
#7. Display this array in reverse order
puts "Sorting (REVERSE) of array 'months' is: #{months.reverse}"
#8. Display this array in shuffle order
puts "Sorting (SHUFFLE) of array 'months' is: #{months.shuffle}"
#9. Convert this array in to string and display it
puts "Converting array 'months' to string: #{months.to_s}"
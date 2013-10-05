#For array "days" provide following:
days = []
puts "Data is inserted into array 'days': #{days = (01 .. 31).to_a}"
#1. Display the class of this array
   puts days.class
 #2. Display the size of this array
puts days.size
#3. Display the first item of this array
puts days.first
 #4. Display the last item of this array
puts days.last
#5. Display this array in reverse order
puts days.reverse
#6. Display this array in shuffle order
puts days.shuffle
#7. Verify if this array is contains # 15?
puts "Verify if this array is contains \# 15 : #{days .include?(15)}"
#8. Verify if this array is contains # 32?
puts "Verify if this array is contains \# 32 : #{days .include?(32)}"
#9. Convert this array in to string and display it
 puts days.to_s
#10. Removes all elements from this array
days = []


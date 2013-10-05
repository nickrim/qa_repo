#For hash "year" provide following:

year =        {

    :january => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :february => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28] ,
    :march => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :april => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :may => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :june => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :jule => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :august => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :september => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :october => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],
    :november => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],
    :december => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]

}

#1.      Display the class of the hash

puts "Class of hash 'year' is: #{year.class}"

#2.      Display the size of the hash

puts "Size of hash 'year' is: #{year.size}"

#3.      Display the all keys of the hash

puts "All keys of hash 'year' is: #{year.keys}"

#4.      Display the all values of the hash

puts "All values of hash 'year' is: #{year.values}"

#5.      Sort this hash in ascending order (a to z)

puts "Sorting (ASC) of hash 'year' is: #{year.sort}"

#6.      Sort this hash in descending order (z to a)

puts "Sorting (DESC) of hash 'year' is: #{year.sort{|a,b| b <=> a}}"

#7.      Convert this hash in to string and display it

puts "Converting hash 'year' to string: #{year.to_s}"

#8.      Convert this hash in to array and display it

puts "Converting hash 'year' to array: #{year.to_a}"

#9.      Removes all elements from this hash

puts "Removing all elements from hash 'year': #{year.clear}"
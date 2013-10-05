#Insert data into arrays
# 1. days - from 01 to 31 (please use range)
puts "Data is inserted into array 'days': #{days = (01 .. 31).to_a}"
#2. week - from Monday to Sunday
puts "Data is inserted into array 'week': #{week = ["Monday", "Tuesday"]}"
#3. months - from January to December
puts "Data is inserted into array 'months': #{monts = ["January", "February"]}"
#4. contacts - User ID, Full Name, Phone, Age, Email (from the list below)
contacts = [
           [1, "Magee Freeman", "415 555-4597", 33, "magee.freeman@gmail.com"],
           [2, "Reed Haynes", "415 555-4657", 56, "reed_haynes@hotmail.com"]
           ]
puts "Data is inserted into array 'contacts': #{contacts [0][1]}"
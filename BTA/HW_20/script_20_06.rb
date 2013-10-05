#For 2 dimensional array "contacts" provide following
contacts = [
    [1, "Magee Freeman", "415 555-4597", 33, "magee.freeman@gmail.com"],
    [2, "Reed Haynes", "415 555-4657", 56, "reed_haynes@hotmail.com"],
    [3, "Plato Sosa", "650 555-4555", 18, "plato.sosa@gmail.com"],
    [4, "Rogan Skinner", "408 555-9702", 22, "rogan@gmail.com"],
    [5, "Castor Waters", "415 555-7344", 24, "castor@mac.com"],
    [6, "Abbot Cash", "925 555-2322", 61, "abbot_cash@hotmail.com"],
    [7, "Oren Nunez", "415 555-3599", 42, "oren.nunez@yahoo.com"],
    [8, "Isaiah Moore", "415 555-1123", 37, "isaiah_moore@yahoo.com"],
    [9, "Gregory Butler", "408 555-8976", 39, "eu.neque@odio.ca"],
    [10, "Timothy Pickett", "415 555-3321", 44, "feugiat@yahoo.com"],
    [11, "Amery Paul", "650 123-9876", 45, "amery_paul@mac.com"],
    [12, "Lyle Curtis", "408 555-8897", 21, "ipsum@quam.ca"],
    [13, "Amery Cash", "408 555-4597", 25, "amery_cash@yahoo.com"],
    [14, "Odysseus Hogan", "718 555-1234", 33, "nunc@mac.org"],
    [15, "Vaughan Carson", "212 555-1154", 37, "v_carson@eteros.edu"],
    [16, "Lance Guthrie", "856 555-4498", 44, "lance.guthrie@gmail.com"],
    [17, "Raphael Charles", "415 555-2234", 52, "r.charles@eu.org"],
    [18, "Ronan Sanford", "650 555-3563", 54, "semper.tellus@magnaUt.edu"],
    [19, "Abel Wells", "415 555-3298", 25, "neque.venenatis@gmail.com"],
    [20, "Kasper Knox", "650 555-4469", 30, "kknox@aenean.org"]
     ]

#puts contacts

#1. Display the class of the array
puts "Class of array 'contacts' is: #{contacts.class}"
#2. Display the size of the array
puts "Size of array 'contacts' is: #{contacts.size}"
#3. Display the age of the first item of the array
puts "Age of the first item of array 'contacts' is: #{contacts[0][3]}"
#4. Display the phone of the last item of the array
puts "Phone of the last item of array 'contacts' is: #{contacts[-1][2]}"
#5. Sort this array in descending order by id (9 to 1)
puts "Sorting array 'contacts' in reverse order: #{contacts.reverse}"
#6. Sort this array in ascending order by name (a to z)
puts contacts.sort{|a,b| a[1] <=> b[1]}
#7. Sort this array in ascending order by age (1 to 9)
puts contacts.sort{|a,b| a[3] <=> b[3]}
#8. Display all items of the array with Last Name Cash
puts contacts.select {|item|item[1] =~ /Cash/}
#9. Display all items of the array with area code 415
puts contacts.select {|item|item[2] =~ /^415/}
#10. Display all items of the array where age > 40
puts contacts.select {|item|item[3] > 40}
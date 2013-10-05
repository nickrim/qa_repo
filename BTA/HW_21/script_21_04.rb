
contacts =        {

    m_freeman: {id: 1, first_name: "Magee", last_name: "Freeman", phone: "415 555-4597", age: 33, email: "magee.freeman@gmail.com"},
    r_haynes: {id: 2, first_name: "Reed", last_name: "Haynes", phone: "415 555-4657", age: 56, email: "reed_haynes@hotmail.com"},
    p_sosa: {id: 3, first_name: "Plato", last_name: "Sosa", phone: "650 555-4555", age:  18, email: "plato.sosa@gmail.com"},
    r_skinner: {id: 4, first_name: "Rogan", last_name: "Skinner", phone: "408 555-9702", age:  22, email: "rogan@gmail.com"},
    c_waters: {id: 5, first_name: "Castor", last_name: "Waters", phone: "415 555-7344", age:  24, email: "castor@mac.com"},
    c_cash: {id: 6, first_name: "Abbot", last_name: "Cash", phone: "925 555-2322", age:  61, email: "abbot_cash@hotmail.com"},
    o_nunez: {id: 7, first_name: "Oren", last_name: "Nunez", phone: "415 555-3599", age:  42, email: "oren.nunez@yahoo.com"},
    i_moore: {id: 8, first_name: "Isaiah", last_name: "Moore", phone: "415 555-1123", age:  37, email: "isaiah_moore@yahoo.com"},
    g_butler: {id: 9, first_name: "Gregory", last_name: "Butler", phone: "408 555-8976", age:  39, email: "eu.neque@odio.ca"},
    t_pickett: {id: 10, first_name: "Timothy", last_name: "Pickett", phone: "415 555-3321", age:  44, email: "feugiat@yahoo.com"},
    a_paul: {id: 11, first_name: "Amery", last_name: "Paul", phone: "415 555-5549", age:  45, email: "amery_paul@mac.com"},
    l_curtis: {id: 12, first_name: "Lyle", last_name: "Curtis", phone: "408 555-8897", age:  21, email: "ipsum@quam.ca"},
    a_cash: {id: 13, first_name: "Amery", last_name: "Cash", phone: "408 555-4597", age:  25, email: "amery_cash@yahoo.com"},
    o_hogan: {id: 14, first_name: "Odysseus", last_name: "Hogan", phone: "718 555-1234", age:  33, email: "nunc@mac.org"},
    v_carson: {id: 15, first_name: "Vaughan", last_name: "Carson", phone: "212 555-1154", age:  37, email: "v_carson@eteros.edu"},
    l_guthrie: {id:16 , first_name: "Lance", last_name: "Guthrie", phone: "856 555-4498", age:  44, email: "lance.guthrie@gmail.com"},
    r_charles: {id: 17, first_name: "Raphael", last_name: "Charles", phone: "415 555-2234", age:  52, email: "r.charles@eu.org"},
    r_sanford: {id: 18, first_name: "Ronan", last_name: "Sanford", phone: "650 555-3563", age:  54, email: "semper.tellus@magnaUt.edu"},
    a_wells: {id: 19, first_name: "Abel", last_name: "Wells", phone: "415 555-3298", age:  25, email: "neque.venenatis@gmail.com"},
    k_knox: {id: 20, first_name: "Kasper", last_name: "Knox", phone: "650 555-4469", age:  30, email: "kknox@aenean.org"}

}
#For hash of hashes "contacts" provide following:

#1.      Display the class of the hash

puts "Class of hash 'contacts' is: #{contacts.class}"

#2.      Display the size of the hash

puts "Size of hash 'contacts' is: #{contacts.size}"

#3.      Display the all keys of the hash

puts "All keys of hash 'contacts' is: #{contacts.keys}"

#4.      Display the all values of the hash

puts "All values of hash 'contacts' is: #{contacts.values}"

#5.      Sort this hash in ascending order (a to z)

puts "Sorting (ASC) of hash 'contacts' is: #{contacts.sort}"

#6.      Sort this hash in descending order (z to a)

puts "Sorting (DESC) of hash 'contacts' is: #{contacts.sort{|a,b| b <=> a}}"

#7.      Sort this hash in descending order (age)

puts "Sorting (DESC) of hash by Age 'contacts' is: #{contacts.sort_by{|k,v|v[:age]}}"

#8.      Convert this hash in to string and display it

puts "Converting hash 'contacts' to string: #{contacts.to_s}"

#9.      Convert this hash in to array and display it

puts "Converting hash 'contacts' to array: #{contacts.to_a}"

#10.  Display First Name of item 'm_freeman' of the hash

puts "First Name: #{contacts[:m_freeman][:first_name]}"

#11.  Display Last Name of item 'm_freeman' of the hash

puts "Last Name: #{contacts[:m_freeman][:last_name]}"

#12.  Display Phone number of item 'm_freeman' of the hash

puts "Phone number: #{contacts[:m_freeman][:phone]}"

#13.  Display Age of item 'm_freeman' of the hash

puts "Age: #{contacts[:m_freeman][:age]}"

#14.  Display Email address of item 'm_freeman' of the hash

puts "Email: #{contacts[:m_freeman][:email]}"

#15.  Removes all elements from this hash

puts "Removing all elements from hash 'contacts': #{contacts.clear}"
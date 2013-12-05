require 'optparse'
require 'mysql'
require 'csv'

items = []

OptionParser.new do |opts|
opts.on("-i", "--input") {$csv_file = ARGV[0]}
opts.on("-d", "--db") {$db_name = ARGV[0]}
opts.on("-t", "--table") {$table_name = ARGV[0]}
opts.on("-c", "--test_case") {$test_case = ARGV[0]}
end.parse!


begin
con = Mysql.new 'localhost', 'auto', 'password'
con.query("CREATE DATABASE IF NOT EXISTS #{$db_name}")
con.query("USE #{$db_name}")
con.query("DROP TABLE IF EXISTS #{$table_name}")
con.query("CREATE TABLE IF NOT EXISTS #{$table_name} (Id INT PRIMARY KEY AUTO_INCREMENT, Item VARCHAR(60), TC VARCHAR(10))")

tc = 1

f = CSV.read($csv_file)

f.each do |line|
line.each do |item|
        if tc > 0 and tc < 9 then tc  = "0#{tc}" end
  con.query("INSERT INTO #{$table_name}(Item, TC) VALUES('#{item}', 'c_#{tc}')")
       if tc.class.to_s == "String" then tc = tc.to_i end
  end
  tc += 1
  end
  

rs = con.query("SELECT * FROM #{$table_name} WHERE TC = '#{$test_case}' ")

rs.each_hash do |row|
items << row["Item"].chomp
end

puts ""
puts "My favorite fruits are #{items[0].chop} and #{items[1].chop}"
puts ""

rescue Mysql::Error => e
puts e.errno
puts e.error
ensure
con.close if con
end


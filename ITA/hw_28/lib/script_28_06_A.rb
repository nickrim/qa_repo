require 'optparse'
require 'mysql'

items = []

OptionParser.new do |opts|
opts.on("-i", "--input") {$sql_file = ARGV[0]}
opts.on("-d", "--db") {$db_name = ARGV[0]}
opts.on("-t", "--table") {$table_name = ARGV[0]}
end.parse!


begin
con = Mysql.new 'localhost', 'auto', 'password'
con.query("CREATE DATABASE IF NOT EXISTS #{$db_name}")
con.query("USE #{$db_name}")
con.query("DROP TABLE IF EXISTS #{$table_name}")

File.readlines($sql_file).each do |sql| 					
str = sql.gsub("tbl","#{$table_name}") 					
con.query("#{str}") 												
end

rs = con.query("SELECT * FROM #{$table_name}")

rs.each_hash do |row|
items << row["Item"].chomp
end

sum = 0
count = 0

items.each {|item| 
sum += item.chomp.to_f
count += 1
}


puts ""
puts "The summary of the following numbers is: #{sum}"
puts ""

rescue Mysql::Error => e
puts e.errno
puts e.error
ensure
con.close if con
end

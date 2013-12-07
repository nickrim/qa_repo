require 'optparse' 
 
lines = [] 
 
OptionParser.new do |opts| 
 opts.on("-i", "--input") {$input_file = ARGV[0]} 
 opts.on("-o", "--output") {$output_file = ARGV[0]} 
end.parse! 
 
 in_file = File.open($input_file, "r") 
 in_file.each_line do|read| 
 lines.push read 
 end 
 
 File.open($output_file, "w") do|write| 
 write << "My favorite fruits are :#{lines[0].chomp}s and #{lines[1].chomp}s" 
 end 

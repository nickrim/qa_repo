# ========================================================================
puts ""
puts "Script \s\s\s\s: " + __FILE__.chop.chop.chop
# ========================================================================
# Description         =        "This is a description of the script"
# Name                =        "Nick Krimnus"
# Email               =        "your@email.com"
# ========================================================================
puts ""

require 'optparse'
require 'csv'

OptionParser.new do |opts|

  opts.on("-i", "--input") do
    $file_name = ARGV[0]
  end

  opts.on("-r", "--row") do
    $row = ARGV[0]  # first row is 0
  end

end.parse!

row_num = $row.to_i - 1

csv_file = CSV.read($file_name) # csv_file[0][0]

#puts His name is:#{result} "



puts "Here are sorted (alphabetically) words: #{csv_file[row_num].sort.join(" ")}"

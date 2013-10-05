#a.      Create method "calc_sum_any" with parameters do following:

#    Print summarization of all values (could be any amount of values)

def calc_sum(first, *rest)

  rest.each {|r| first = first + r}

  puts first

end

#b.      Call this method 3 times with multiple parameters with values:

# Call # 1: 22, 55, 634, 647, 226, 416

calc_sum(22, 55, 634, 647, 226, 416)

#Call # 1: 543, 56, 3, 245, 456, 3345, 1, 776, 4865, 2998, 1712

calc_sum(543,56,3,245,456,3345,1,776,4865,2998,1712)

#Call # 1: 1, 5, 4

calc_sum(1,5,4)
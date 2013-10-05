#	script_19_15.rb
#	Ranges as Condition: Using script below, display the following:

#	1.	What is the result If score (nothing)  		score = 
#	2.	What is the result If score 5				score = 5
#	3.	What is the result If score 15				score = 15
# score=
score = 

result1 = case score

when 0..10 then "Fail"

            when 11..20 then "Pass"

else "Invalid Score"

end

puts result1

# score=5
score = 5

result2 = case score

when 0..10 then "Fail"

            when 11..20 then "Pass"

else "Invalid Score"

end

puts result2

# score=5
score = 15

result3 = case score

when 0..10 then "Fail"

            when 11..20 then "Pass"

else "Invalid Score"

end

puts result3
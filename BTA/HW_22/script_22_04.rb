#a.      Call method "my_method" (defined in script script_22_01.rb)

require "./script_22_01.rb"

my_method

#b.      Call method "my_method_param" with passing parameter "name" with value

#"Your Name" (defined in script script_22_02.rb)

require "./script_22_02.rb"

my_method("nick")

#c.       Call method "my_method_param_default" WITHOUT passing parameter

#(defined in script script_22_03.rb)

require "./script_22_03.rb"

my_method_param_default()

#d.      Call method "my_method_param_default" with parameter "name" and value

#"Some other Name" (defined in script script_22_03.rb)

require "./script_22_03.rb"

my_method_param_default("Alex")
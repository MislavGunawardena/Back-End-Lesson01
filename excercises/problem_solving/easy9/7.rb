# Method: swap_name
# Argument: A string, name in the first name first format, name
# Side effects: None
# Return: A string, name in the last name first format
# Edge cases:
#   N/A
# 
# Algorithm:
#   name: i/p argument
#   names = 
#   first_name = names[0]
#   last_name = names[-1]
#   return "#{last_name}, #{first_name}"

def swap_name(names)
  names = names.split
  first_name = names[0]
  last_name = names[-1]
  "#{last_name}, #{first_name}"
end

p swap_name("Mike Gunner")
p swap_name('Joe Roberts') == 'Roberts, Joe'


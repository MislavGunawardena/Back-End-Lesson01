# Method: calculate_bonus
# Arguments: positive integer, boolean: salary, bonus_eligibility
# Aide effects: None.
# Return: Integer. Either half the salary or 0.
# 
# Edge cases:
#   None, since salary has to be a positive integer
# 
# Assumptions:
#   Based on the examples provided, I should use integer division to calculate 
#   bonus.
# 
# Algorithm:
#   salary, bonus <- arguments   
#   if bonus
#     return salary / 2
#   otherwise
#     return 0

def calculate_bonus(salary, bonus_eligibility)
  bonus_eligibility ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
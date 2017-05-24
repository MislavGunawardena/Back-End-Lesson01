# Method: is_odd?
# Arguments: integer, num
# Side effects: None 
# Return: boolean. true if absolute value of num is odd, false otherwise.
# Edge cases:
#   num is 0
# 
# Algorithm:
#   is_even = (num == num / 2)
#   return !is_even

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
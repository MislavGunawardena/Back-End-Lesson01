# Method name: twice
# Arguments: integer value
# Side effects: none
# Return: integer value, returns the argument passed in if it is a doubble 
#         number, otherwise returns a number that is twice the argument
# 
# Edge cases:
#   twice(0)
#   assumed that i/p arguments are positive.
# 
# Algorithm:
# num: i/p
# Test whether num is a double number.
#   num_string = num.to_s
#   digits = num_string.size
#   if digits is odd, false, not a double number
#   0, 1, 2, 3......................(n-1) n being size 
#   The first n / 2 numbers belong to the first half
#   The first n / 2 - 1 indices correspond to the first half. 
#   Indexes n / 2 to n - `1 belong to the second half.
#   first_half = num_string.slice(1..(n / 2 - 1))
#   second_half = num_string.slice(n/2..-1)
#   return first_half == second_half
# 
# If it is:
#   return num
# Otherwise:
#   return 2 * num

def double_number?(num)
  num_string = num.to_s
  digits = num_string.size
  return false if digits.odd?
  first_half = num_string.slice(0..(digits / 2 - 1))
  second_half = num_string.slice((digits / 2)..-1)
  
  first_half == second_half
end

def twice(num)
  double_number?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

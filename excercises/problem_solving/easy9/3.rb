# Method name: negative
# Argument(s): integer, num
# Return: integer, return num if num is negative or zero, otherwise -num
# Edge cases:
#   negative(0)
# 
# Algorithm:
#   f num is less than or equal to zero, return num.
#   Otherwise, return -num

def negative(num)
  num <= 0 ? num : -num 
end

p negative(0)
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
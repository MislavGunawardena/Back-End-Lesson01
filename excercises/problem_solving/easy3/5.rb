# Method: square
# Argument: Integer, num
# Side effects: None
# Return: Integer, square of num
# 
# Algorithm:
#   Trivial

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
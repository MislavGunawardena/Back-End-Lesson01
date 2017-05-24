# Method: average
# Argument: Array of positive integers, numbers
# Side effects: None
# Return: Integer, average of all the numbers
# Edge cases:
#   n/a
# 
# Algorithm:
#   numbers <- i/p argument
#   total = Add up all the integers in numbers
#   Return total / numbers

def average(numbers)
  numbers.inject(:+) / numbers.size
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
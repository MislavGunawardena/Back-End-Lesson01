# Method: fibonacci
# Arguments: 1 integer, position
# Side effects: None
# Return: Integer, should return the position'th fibonacci number.
# Edge cases:
#   fibonacci(1) should return 1
#   fibonacci(2) should return 1
# 
# Algorithm:
#      position <= argument
#
#   1) fibonacci_numbers = [1, 1]
#   2) do the following (position - 2) times:
#        add up the values of the last 2 numbers in the fibonacci_numbers
#        array and place the result at the end of that array.
#   3) return the last element of the fibonacci_numbers array

def fibonacci(nth)
  fibonacci_numbers = [1, 1]
  (nth - 2).times do |_|
    fibonacci_numbers << fibonacci_numbers[-2] + fibonacci_numbers[-1]
  end
  fibonacci_numbers.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

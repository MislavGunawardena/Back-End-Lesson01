# Method: fibonacci_last
# Argument: Integer, nth
# Side effects: None
# Return: Integer. A single digit integer that equals the last digit of the
#         nth fibonacci number.
# 
# Algorithm:
#   nth <= argument
# 
#   1) next_to_last = 1
#   2) last = 1
#   3) Do the following (nth - 2) times
#       last, before_last = (last + next_to_last) % 10 , last
#   4) Return last

def fibonacci_last(nth)
  last, next_to_last = 1, 1
  (nth - 2).times { |_| last, next_to_last = (last + next_to_last) % 10 , last }
  last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
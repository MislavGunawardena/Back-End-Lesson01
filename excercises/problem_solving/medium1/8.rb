# Method: fibonacci
# Arguments: 1 integer, position
# Side effects: None
# Return: Integer, should return the position'th fibonacci number.
# Edge cases:
#   fibonacci(1) should return 1
#   fibonacci(2) should return 1
# 
# Algorithm:
#   position <= argument
#   if position is 1 then return 1
#   if position is 2 then return 1
#   if position > 2 :
#     return fibonacci(position - 1) + fibonacci(position - 2)

def fibonacci(position)
  return 1 if position <= 2 
  fibonacci(position - 1) + fibonacci(position - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
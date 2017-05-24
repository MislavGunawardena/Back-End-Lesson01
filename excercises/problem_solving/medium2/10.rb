# Merthod: sum_square_difference
# Argument: integer, assume positive integer? number
# Side effects: None
# Return: Integer. Difference between square of sums of all positive integers
#         upto the argument, and their sum of squares.
# Edge cases:
#   sum_square_difference(1) => 1 - 1 = 0
# 
# Algorithm:
#   number <= argument
#   1) sum = sum of all numbers 1, 2, .....number
#   2) square_of_sum = sum ** 2
#   3) sum_of_squares = 0
#   4) for all index values: 1, 2, ....., number:
#        sum_of_squares += index ** 2
#   5) return: square_of_sum - sum_of_squares

def sum_square_difference(number)
  sum = (1..number).to_a.inject(:+)
  square_of_sum = sum ** 2
  sum_of_squares = 0
  1.upto(number) do |index|
    sum_of_squares += index ** 2
  end
  
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

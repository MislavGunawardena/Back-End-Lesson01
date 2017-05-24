# sum_square_difference(3) == 22
#   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

def sum_square_difference(num)
  numbers = (0..num).to_a
  sum = numbers.inject(&:+)
  square_of_sums = sum ** 2
  
  squares = numbers.map { |num| num * num }
  #sum_of_squares = squares.inject(&:+)
  sum_of_squares = squares.inject(&:+)
  
  square_of_sums - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
def sum_square_difference(num)
  numbers = (1..num).to_a
  sum = numbers.inject(&:+)
  square_of_sum = sum ** 2
  squares = numbers.map { |n| n ** 2 }
  sum_of_squares = squares.inject(&:+)
  
  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
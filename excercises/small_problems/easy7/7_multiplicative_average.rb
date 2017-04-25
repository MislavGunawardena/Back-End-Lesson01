# method <= array of integers
# multiplies all the integers together, divides that by the number of integers,
# and prints the result rounded to 3 decimal places.

def show_multiplicative_average(array) 
  multiplicative_average = array.inject(&:*) / array.size.to_f
  puts format("The result is %.3f", multiplicative_average.round(3))
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
def show_multiplicative_average(numbers)
  multiplicative_average = numbers.inject(&:*) / numbers.size.to_f
  puts format("The result is %.3f", multiplicative_average)
end

show_multiplicative_average([1, 10, 1])
show_multiplicative_average([3, 5])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
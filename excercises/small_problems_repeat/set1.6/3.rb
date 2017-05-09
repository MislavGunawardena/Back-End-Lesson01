def find_fibonacci_index_by_length(number_of_digits)
  fibonacci = [1]
  until number_of_digits == fibonacci[-1].to_s.size
    fibonacci << fibonacci.last(2).inject(:+)
  end
  
  fibonacci.size
end

p find_fibonacci_index_by_length(1) == 1
p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
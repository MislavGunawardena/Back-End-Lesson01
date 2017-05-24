def find_fibonacci_index_by_length(size)
  return 1 if size == 1
  fibonacci_numbers = [1, 1]
  loop do
    fibonacci_numbers << fibonacci_numbers.last(2).inject(:+)
    break if fibonacci_numbers.last.to_s.size >= size
  end
  
  fibonacci_numbers.size
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
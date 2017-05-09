def fibonacci(n)
  return 1 if n <= 2
  next_to_last, last = 1, 1
  3.upto(n) do |index|
    next_to_last, last = last, (next_to_last + last)
  end
  
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
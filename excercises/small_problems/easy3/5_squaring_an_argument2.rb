def multiply(number1, number2) 
  number1 * number2
end

def power(number, n)
  result = 1
  n.times { result = multiply(result, number) }
  result
end

puts power(8, 2)
puts power(5, 4)
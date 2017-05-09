def multiply(first_number, second_number)
  first_number * second_number
end

def square(number)
  multiply(number, number)
end

def power(number, exponent)
  result = 1
  exponent.times do |_|
    result = multiply(result, number)
  end
  
  result
end

p square(5) == 25
p square(-8) == 64

p power(2,8)
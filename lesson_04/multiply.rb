def multiply(numbers, factor)
  multiplied_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    current_number *= factor
    multiplied_numbers << current_number
    
    counter += 1
  end
  
  multiplied_numbers
end

my_numbers = [23, 1,56, 100]
puts multiply(my_numbers, 3)
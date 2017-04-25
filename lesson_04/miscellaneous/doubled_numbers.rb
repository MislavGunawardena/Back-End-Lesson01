
def doubled_numbers!(array_of_numbers)
  counter = 0
  
  loop do
    break if counter == array_of_numbers.size
    
    array_of_numbers[counter] *= 2
    
    counter += 1
  end
  array_of_numbers
end

numbers = [1,5,8,4]
doubled_numbers!(numbers)

puts numbers
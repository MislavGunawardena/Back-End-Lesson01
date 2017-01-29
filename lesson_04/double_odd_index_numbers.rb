def double_odd_index_numbers(numbers_array)
  doubled_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers_array.size
    
    current_number = numbers_array[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number
    
    counter += 1
  end
  doubled_numbers
end

numbers = [3,56,23,4,7]
puts double_odd_index_numbers(numbers)


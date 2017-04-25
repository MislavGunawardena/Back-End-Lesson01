def include?(array, search_value)
  counter = 0
  included = false
  loop do
    break if counter == array.size
    if array[counter] == search_value
      included = true
      break
    end
    counter += 1
  end
  
  included
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
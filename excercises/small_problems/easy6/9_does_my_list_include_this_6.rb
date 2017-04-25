#This is not WRONG because one? will return false if the block condition is met more than once.
def include?(array, search_value)  
  array.one? { |element| element == search_value }
end

puts include?([1, 2, 3, 4, 5, 3], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
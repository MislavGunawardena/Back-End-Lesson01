# merge method <= two arrays as arguments
# returns => array with all the elements of the argument arrays, no duplicates in
# the original arrays, even if there are duplicates in the original arrays.

# algorithm:
# parameters <= array1, array2
# combined_array <= []
# for each element of array1 and array 2:
#   if element is not already included in combiner_array, then place the element
#   at the end of comined_array
# return combined_array

def merge(array1, array2)
  combined_array = []
  (array1 + array2).each do |element|
    combined_array.push(element) unless combined_array.include?(element)
  end
  combined_array
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([1, 10, 5, 5, 5, 2, 1], [1,11, 2, 3]) == [1, 10, 5, 2, 11, 3]
puts merge([-22, 15, 0, 15, 4], []) == [-22, 15, 0, 4]
puts merge([], []) == []

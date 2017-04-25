def merge(array1, array2) 
  (array1 + array2).each_with_object([]) do | element, combined_array |
    combined_array.push(element) unless combined_array.include?(element)
  end
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge([1, 10, 5, 5, 5, 2, 1], [1,11, 2, 3]) == [1, 10, 5, 2, 11, 3]
puts merge([-22, 15, 0, 15, 4], []) == [-22, 15, 0, 4]
puts merge([], []) == []

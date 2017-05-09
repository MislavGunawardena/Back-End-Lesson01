def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |item1, item2| item1 * item2 }
end

p multiply_list([2,3], [4,5])
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
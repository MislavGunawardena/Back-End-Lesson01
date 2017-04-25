# multiply_list <= two arrays whose size is the same. arrays are lists of 
# numbers.
# should return a new array where each element is the product of the two
# corresponding elements from the argument array whose index is the same.


# algorithm:
#   array1, array2 <= i/p arrays
#   n = size of an array.
#   multiplied_results = []
#   for index is 1 to index is n do:
#     multiplied results << array1[index] * array2[index]
#   return multiplied_results

def multiply_list(array1, array2) 
  array1.zip(array2).map { |(element1, element2)| element1 * element 2 }
end


#examples:
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
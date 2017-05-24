# Method: merge
# Arguments: 2 arrays. Both containing sorted numbers.
# Side effects: None. Specifically, argument arrays should not be mutated.
# Return: A new array. Should contain all the elements of the argument arrays
#         while maintaining the sorted order.
# Edge cases:
#   merge([], [1, 4, 5]) == [1, 4, 5]
#   merge([], []) == []
# 
# Algorithm:
#   array1, array2 <= arguments
#   composite_array = []
#   index1 = 0
#   index2 = 0
#   loop:
#     if index1 == size of aray1
#       place all items of array2 from index2 onwards on composite_array
#       break
#     elsif index2 == size of array2
#       place all items on array1 from index1 onwards on composite array
#       break
# 
#     first_item = array1[index1]
#     second_item = array2[index2]
#     if first_item <= second_item
#       place first_item in composite_array
#       index1 += 1
#     else
#       compposite_array << second_item
#       index2 += 1
# 

def merge(array1, array2)
  composite_array = []
  index1 = 0
  index2 = 0
  
  loop do
    if index1 == array1.size
      index2.upto(array2.size - 1) { |index| composite_array << array2[index] }
      break
    elsif index2 == array2.size
      index1.upto(array1.size - 1) { |index| composite_array << array1[index] }
      break
    end
    
    first_item = array1[index1]
    second_item = array2[index2]
    if first_item <= second_item
      composite_array << first_item
      index1 += 1
    else
      composite_array << second_item
      index2 += 1
    end
  end
  
  composite_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
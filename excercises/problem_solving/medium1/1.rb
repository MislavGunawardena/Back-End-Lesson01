# Write a method that rotates an array by moving the first element to the end of 
# the array. The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Method: rotate_array
# Arguments: Array, arr
# Side effects: No
# Return: A new array, where the first element of the argument array is placed 
#         at the end instead.
# Edge cases:
#   rotate_array([]) ? []
#   rotate_array(['a']) == ['a']
# 
# Algorithm:
#   arr <- argument
#   first_element = The first element of arr
#   Return (elements of arr whose indexes are 1, 2....-1) + first_element


def rotate_array(arr)
  return arr.dup if arr.size < 2
  first_element = arr.first
  arr[1..-1] + [first_element]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
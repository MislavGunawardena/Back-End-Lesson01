# halvsies method <= array
# halvsies method => two arrays: first half and the second half of argument array.
# if i/p array contains an odd number of elements, middle element should be in the
# returned array of the first half.

# algorithm:
# array <= parameter
# array <= duplicate of itself
# first_half = []
# midd_point = (array.size + 1) / 2
# midd_point times do the following:]
#   take out an element from the front of array
#   place that element at the end of first_half
# return: first_half and array

def halvsies(array)
  second_half = []
  array = array.dup
  (array.size / 2).times do |index|
    second_half.unshift(array.pop)
  end
  [array, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
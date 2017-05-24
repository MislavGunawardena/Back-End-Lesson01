# x = index of last element in first half. 
# 
# if size is odd: there are x elements on either side of the element at the
# middle.
#   2x + 1 = size
#   x = (size - 1) / 2
# 
# if size is even: there are x + 1 elements on each half.
#   2(x + 1) = size
#   x + 1 = size / 2
#   x = size/2 - 1
# 
# when size is even, (size - 1)/2 is 1 less than size / 2
# Hence, when size is even
#   x = (size - 1) / 2


def halvsies(arr)
  return [[],[]]if arr == []
  return [arr, []] if arr.size == 1
  size = arr.size
  middle = (size - 1) / 2
  [arr[0..middle], arr[(middle + 1)..-1]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
def halvsies(arr)
  first_half = arr.first((arr.size / 2) + (arr.size % 2))
  second_half = arr.last(arr.size / 2)
  [first_half, second_half]
end

p halvsies([1,2,3,4,5])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
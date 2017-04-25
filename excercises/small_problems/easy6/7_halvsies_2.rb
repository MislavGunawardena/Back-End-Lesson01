def halvsies(array)
  middle_point = (array.size + 1) / 2
  first_half = array.slice(0, middle_point)
  second_half = array.slice(middle_point, (array.size / 2))
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
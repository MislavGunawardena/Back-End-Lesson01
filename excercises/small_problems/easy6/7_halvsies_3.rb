def halvsies(array)
  index = 0
  array.inject([[], []]) do |(first_half, second_half), item|
    first_half << item if index < ((array.size + 1) / 2)
    second_half << item if index >= ((array.size + 1) / 2)
    index = index + 1
    [first_half, second_half]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
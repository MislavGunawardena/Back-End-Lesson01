def interleave(arr1, arr2)
  result = []
  arr1.size.times { |index| result << arr1[index] << arr2[index] }
  
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([], [])
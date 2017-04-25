def interleave(array1, array2) 
  array1.zip(array2).each_with_object([]) do |(item1, item2), combined_array |
    combined_array.push(item1, item2)
  end
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
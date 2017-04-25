def oddities(array)
  sub_array = []
  array.each_with_index { |item, index| sub_array << item if index.even? }
  sub_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []


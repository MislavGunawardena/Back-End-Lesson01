def oddities(array)
  count = -1
  array.select do |item|
    count += 1
    count.even?
  end
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
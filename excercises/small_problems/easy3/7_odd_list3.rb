def oddities(array)
  sub_array = []
  array.size.times do |index|
    sub_array << array[index] if index.even?
  end
  sub_array
end

puts oddities([2, 3, 4, 5, 6]).to_s
puts oddities(['abc', 'def']).to_s
puts oddities([123]).to_s
puts oddities([]).to_s

def even_items(array) 
  sub_array = []
  array.each_with_index { |item, number| sub_array << item if number.odd? }
  sub_array
end

puts even_items([2, 3, 4, 5, 6]).to_s
puts even_items(['abc', 'def']).to_s
puts even_items([123]).to_s
puts even_items([]).to_s

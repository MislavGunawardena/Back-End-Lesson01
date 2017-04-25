arr = [1, 2, 44, 88, 5, -2, 10, 8, 77, 35, 100, 1001, 29]

arr_sorted =
arr.sort! do |a, b|
  if (50 - a).abs < (50 - b).abs
    -1
  elsif (50 - a).abs == (50 - b).abs
    0
  else
    +1
  end
end

puts arr_sorted.to_s
puts arr.to_s
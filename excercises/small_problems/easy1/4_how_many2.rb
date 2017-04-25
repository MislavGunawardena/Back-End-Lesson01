def count_occurrences(arr)
  occurrences = {}
  arr.each do |item|
    occurrences[item] = arr.count(item) unless occurrences.keys.include?(item)
  end
  
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
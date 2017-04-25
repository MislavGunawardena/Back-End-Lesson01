def count_occurrences(arr)
  occurrences = {}
  arr.each do |item|
    if occurrences.keys.include?(item)
      occurrences[item] += 1
    else
      occurrences[item] = 1
    end
  end
  
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
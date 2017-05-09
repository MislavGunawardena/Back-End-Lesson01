def count_occurrences(array)
  occurrences = {}
  array.each do |item|
    occurrences[item] = array.count(item)
  end
  
  occurrences.each do |vehicle, number|
    puts "#{vehicle} => #{number}"
  end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
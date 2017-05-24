# Method: count_occurrences
# Arguments: Array containing strings. arr
# Side effects: Print each element along with the number of times that element
#               occures in arr.
# Return: ?
# 
# Edge cases:
#   i/p => []
# 
# Algorithm:
#   occurrences = {}, Hash.new(0)
#   For each element in arr:
#     occurrences[element] += 1
#   For each k-v pair in occurences
#     print k => v

def count_occurrences(arr)
  occurrences = Hash.new(0)
  arr.each { |element| occurrences[element] += 1 }
  occurrences.each { |item, count| puts "#{item} => #{count}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 
            'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
count_occurrences([])

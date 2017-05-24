# arr <= argument
# n = size of arr
# sequence_type = 0
# 
# adjacents = []
# for index = 0 to index = n - 2
#   adjacent << [arr[index], arr[index + 1]]
# 
# if for all inner arrays of adjacents: |pair|, pair[0] < pair[1]
# then it is strictly increasing
# if for all inner arrays of adjacents: |pair|, pair[0] =< pair[1]
# then it is non decreasing
# ........and so on.

def sequence_classifier(arr)
  adjacent_pairs = []
  arr.each_with_index do |number, index| 
    adjacent_pairs << [number, arr[index + 1]] unless index == arr.size - 1
  end
  case
  when adjacent_pairs.all? { |pair| pair[0] == pair[1] }  then 5
  when adjacent_pairs.all? { |pair| pair[0] < pair[1] }   then 1
  when adjacent_pairs.all? { |pair| pair[0] <= pair[1] }  then 2
  when adjacent_pairs.all? { |pair| pair[0] > pair[1] }   then 3
  when adjacent_pairs.all? { |pair| pair[0] >= pair[1] }  then 4
  else                                                         0
  end
end

p sequence_classifier([3, 6, 9]) # => [[3,6],[6,9]]
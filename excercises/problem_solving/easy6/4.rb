def reverse!(arr)
  insertion_point = 0
  loop do
    break if insertion_point >= arr.size - 1
    arr.insert(insertion_point, arr.pop)
    insertion_point += 1
  end
  arr
end

list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list
p list.object_id == result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
p reverse!(list) # => []
p list == []
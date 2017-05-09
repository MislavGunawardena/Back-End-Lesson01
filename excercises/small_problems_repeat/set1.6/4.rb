def reverse!(arr)
  index = 0
  loop do
    break if index == arr.size
    item = arr.pop
    arr.insert(index, item)
    index += 1
  end
  
  arr
end

list = [1,2,3,4]
p (result = reverse!(list)) # => [4,3,2,1]
list == [4, 3, 2, 1]
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
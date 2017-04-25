# reverse! <= array
# reverse should reerse the order of the elements of array

# algorithm:
# size <= size of array
# n = 0
# for each value of n between 0 and n - 1
#   element <= last element of array
#   insert element into the n'th position of array.

def reverse!(list)
  (list.size - 1).times do |index|
    element = list.pop
    list.insert(index, element)
  end
  list
end




list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!([]) # => []
puts list == []
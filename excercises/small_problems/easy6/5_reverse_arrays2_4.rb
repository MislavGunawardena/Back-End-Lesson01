# Nick Johnsons solution 
def reverse(arr)
  -1.downto(-arr.size).map { |idx| arr[idx] }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true
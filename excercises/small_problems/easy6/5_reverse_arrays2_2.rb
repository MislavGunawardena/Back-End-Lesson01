# def reverse <= array
# reverse => new_array, elements should be in reverse order from array.
# array should not be mutated

# algorithm:
# reverse <= array
# reversed_array = []
# for each element of array: #each
#   add that element to the beginning of reversed_array #unshift
# return reverse_array

def reverse(array)
  array.inject([]) do |new_array, element|
    new_array.unshift(element)
  end
end




puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true
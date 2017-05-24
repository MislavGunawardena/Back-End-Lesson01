# Method: merge_sort
# Argument: An array. Items are numbers or strings.
# Side effects: None
# Return: A sorted array. Should be sorted using merge sort.
# Edge cases:
#   merge_sort([]) == []
#   merge_sort([1]) == [1]
# 
# Algorithm;
# 
# 
# 
# 
# 

def merge(array1, array2)
  composite_array = []
  index1 = 0
  index2 = 0
  
  loop do
    if index1 == array1.size
      index2.upto(array2.size - 1) { |index| composite_array << array2[index] }
      break
    elsif index2 == array2.size
      index1.upto(array1.size - 1) { |index| composite_array << array1[index] }
      break
    end
    
    first_item = array1[index1]
    second_item = array2[index2]
    if first_item <= second_item
      composite_array << first_item
      index1 += 1
    else
      composite_array << second_item
      index2 += 1
    end
  end
  
  composite_array
end

# Method: merge_sort
# Argument: An array. Items are numbers or strings.
# Side effects: None
# Return: A sorted array. Should be sorted using merge sort.
# Edge cases:
#   merge_sort([]) == []
#   merge_sort([1]) == [1]
# 
# Algorithm
#   array <= argument
#   divide all the elements of array roughly equally into two inner arrays.
#   Do the same for all of the inner arrays
#   Keep doing this until each element is in it's own array whose size is 1.
# 
#   if size is even: first n/2 and second n/2
#   if size is odd: first (n+1)/2 and second n/2
#   but is size is even, then n / 2 == (n+1) / 2
# 

def create_inner_arrays(array)
  size = array.size
  array = [array.first((size + 1) / 2), array.last(size / 2)]
end

def merge_sort(array)
  array = create_inner_arrays(array)
  array[0] = create_inner_arrays(array.first)
  array[1] = create_inner_arrays(array.last)
  array[0][0] = create_inner_arrays(array[0][0])
  array[0][1] = create_inner_arrays(array[0][1])
  array
  
  loop do
    break if array.size == 1
  end
end

p merge_sort([4,2,3,1, 7, 1, 2])
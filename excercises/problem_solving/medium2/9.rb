# Method: bubble_sort!
# Argument: An array
# Side effects: Contents of the array should be sorted 
# Return: The array argument itself
# Edge cases:
#   bubble_sort!([]) == []
#   bubble_sort!([3]) == [3]
# 
# Algorithm:
#   array <= argument
#   1) size = array.size
#   2) loop:
#        exhange_made = false
#        for i = 0 to i = size - 2 do following:
#          if array[i] > array[i+1]
#            temp = array[i + 1]
#            array[i + 1] = array[i]
#            array[i] = temp
#            exchange_made = true
#        break unless exchange made 
#   3) array

def bubble_sort!(array)
  size = array.size
  loop do
    exchange_made = false
    0.upto(size - 2) do |index|
      if array[index] > array[index + 1]
        temp = array[index + 1]
        array[index + 1] = array[index]
        array[index] = temp
        exchange_made = true
      end
    end
    break unless exchange_made
  end
  
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


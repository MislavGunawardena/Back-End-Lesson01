# Method: oddities
# Arguments: Array, arr
# Side effects: None
# Return: Array. Should contain every other element of the argument array.
# Edge cases:
#   oddities([])
#   oddities([1]) - just 1 element.
# 
# Algorithm:
#   arr <= Argument
#   every_other_element = Transform arr by converting every odd indexed element
#                         to nil.
#   every_other_element = Remove all nil values from every_other_element
#   return every_other_element

def oddities(arr)
  index = -1
  every_other_element = arr.map do |element|
    index += 1
    index.even? ? element : nil
  end
  every_other_element.compact
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
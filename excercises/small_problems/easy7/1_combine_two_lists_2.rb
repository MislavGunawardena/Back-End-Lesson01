# method interleave <= two arrays: array1, array2
# interleave => an array containing all the elements of array1 and array2 with
#               each element take in alteration.
# assumptions: both argument arays are non-empty and they have the same size.

# algorithm:
# interleaved_array <= []
# Do the following for i = 0, 1, 2, ..., array1.size
#   interleaved_array << array1[i]
#   interleaved_array << array2[i]
# return interleaved_array

def interleave(array1, array2)
  interleaved_array = []
  array1.size.times do |index|
    interleaved_array << (array1[index] << array2[index]) #This is syntactic sugar!
  end
  interleaved_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
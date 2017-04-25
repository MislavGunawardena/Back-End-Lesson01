# find_dup method <= array : unordered
# exactly one value occurs twice, other values occur only once
# find_dup => the value that is duplicated within array

# algorithm:
# find_dup <= array
# array <= copy of itself
# for each element
#   remove the element from array
#   check whether array contains the removed element
#   if it does,
#     duplicate_element <= element
#     break out of the loop
# return duplicate_element

def find_dup(array)
  array = array.dup
  until array == []
    current_element = array.shift
    if array.include?(current_element)
      duplicate_element = current_element
      break
    end
  end
  
  duplicate_element
end


p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
            85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
            40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
            7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
p find_dup([5,5]) == 5
p find_dup([1, 2, 3]) == nil
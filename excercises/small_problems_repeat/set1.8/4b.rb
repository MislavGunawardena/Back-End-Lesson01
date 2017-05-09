# This is slightly different from the 4'th problem. A different approach is 
# taken. The same substrings are returned, but in a different order.
# In the return value, substrings will be present in ascending order of size.

def substrings_of_size(str, n)
  substrings = []
  0.upto(str.size - n) do |index|
    substrings << str[index..(index + n - 1)]
  end
  
  substrings.uniq
end

p substrings_of_size('abcde', 5)

def substrings(str)
  substrings = []
  1.upto(str.size) do |index|
    substrings << substrings_of_size(str, index)
  end
  
  substrings.flatten
end

p substrings('abcab')
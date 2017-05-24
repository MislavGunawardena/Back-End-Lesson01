# Method: substring
# Argument: a string, and 1 or 2 integers : string, num1, [num2]
# Side effect: None
# Return: Should return a substring of string. The substring should start
#         at index num1 and end at index num2 if num2 is provided. If num2 is
#         not provided, then the method should return the single character at
#         index num1. If num2 is out of range, all characters at and after num1
#         should be returned.
# Edge cases:
#   substring("honey", 0, -1) == ""
#   substring("honey", 0, 0) == "0"
#   substring("honey", 4, 5) == 'y'
# 
# Algorithm:
#   string, begin_num, end_num <= argument
#   1) if num2 is not provided, initialize it to nil
#   2) characters = characters of string
#   3) if num2 is nil, return the character at num1
#   4) substring = ''
#   5) from index = num1 to index = num2:
#        substring << convert string[index] to a string
#   6) return substring

def substring(string, begin_num, end_num = nil)
  characters = string.chars
  return characters[begin_num] if end_num.nil?
  substring = ''
  begin_num.upto(end_num) { |index| substring << characters[index].to_s }
  substring
end

# p substring("honey", 4, 5)

# p substring("honey", 0, 2) == "hon"
# p substring("honey", 1, 2) == "on"
# p substring("honey", 3, 9) == "ey"
# p substring("honey", 2) == "n"

# Algorithm:
#   size = size of word
#   substrings = []
#   for begining = 0 to beginning = size - 2
#     (find all substrings starting at index and place them on substrings)
#     for ending = beginning + 1 to ending =  size - 1
#       substrings << substring(index, ending)
#   return substrings

def substrings(word)
  size = word.size
  substrings = []
  0.upto(size - 2) do |beginning|
    (beginning + 1).upto(size - 1) do |ending|
      substrings << word.slice(beginning..ending)
    end
  end
  
  substrings.uniq
end

p substrings("band") # 0-1 0-2 0-3 1-2 1-3 2-3
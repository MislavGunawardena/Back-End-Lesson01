# method => swap
# i/p => a string seperated by spaces
# o/p => a string in where the first and last letter of every word in the i/p
#        is swapped
# a string always has at least one word.
# each string has nothing but words and spaces
# 
# edge_cases:
#   a string with only a single characters
# 
#
# algorithm:
# words => an array containing each word of the i/p string str
# for each word in the words array:
#   temp = last character
#   last_character = first_character
#   first_character = temp
#   (first and last characters are interchanges)
# 
# new_string = construct a string with the new contents in words by placing
#             spaces in between.

def swap(str)
  words = str.split
  words.each do |word|
    temp = word[-1]
    word[-1] = word[0]
    word[0] = temp
  end
  
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'


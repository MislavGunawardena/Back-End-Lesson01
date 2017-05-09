#Further exploration
# edge cases : 
# string empty - should return nil
# even number of words - should return nil, since there is no 'middle'
# just one word : should return that word, since it is 'in the middle'!
# 

def middle_word(str)
  words = str.split
  return nil if words.size.even?
  
  words[words.size / 2]
end

p middle_word('I am really doing fine!')
p middle_word('How can I know this for sure?')
p middle_word('')
p middle_word("I will go on")
p middle_word("Always")
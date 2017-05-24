# method: word_sizes
# i/p: str, a string. words are seperated by spaces. 
# o/p: a hash indicating the number of words of different sizes.
# 
# Edge cases:
#   word_sizes('')
#   word_sizes(' ')
#   word_sizes('a')
#   word_sizes('  ')
# 
# Algorithm:
#   str : string i/p.
#   words : array containing all the words of str. 
#   count : {}
#   for item in words: |item|
#     n : size of item
#     if count.keys contains n, count[n] += 1
#     otherwise, count[n] = 1
#   return count

def word_sizes(str)
  words = str.split
  count = Hash.new(0)
  words.each do |word|
    number_of_letters = word.count('a-zA-Z')
    count[number_of_letters] += 1
  end
  
  count
end

p word_sizes('how are you today?')
p word_sizes('')
p word_sizes(' ')
p word_sizes('a')
p word_sizes('  ')
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
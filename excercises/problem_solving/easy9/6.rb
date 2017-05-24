# Method: word_lengths
# Argument: string, str
# Side effects: none
# Return: array containing strings. Each item is a a string consisting of a
#         word in the i/p argument string and it's length.
# Edge cases:
#   word_lengths('') = []
# 
# Algorithm:
#   str : i/p argument
#   words : words in str
#   word_sizes = []
#   for each item in words: |word|
#     Append (word + ' ' + size of word) to word_sizes  
#   return word_sizes

def word_lengths(str)
  words = str.split
  word_sizes = []
  words.each do |word|
    word_sizes << "#{word} #{word.size}"
  end
  
  word_sizes
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

# Method: word_to_digit
# Argument: String. sentence
# Side effects: None
# Return: All the words corresponding to numbers (of the argument) should be 
#         replaced by numerals.
# Edge cases:
#   word_to_digit('') == ''
# 
# Algorithm:
#   DIGIT_WORDS = %w(one two three four five six seven eight nine)
#   sentence <= argument
# 
#   for each word in digits: |word|
#     find all instances in which that word occurs in sentence
#     substitute the index of word, for the word in sentence

DIGIT_WORDS = %w(zero one two three four five six seven eight nine).freeze

def word_to_digit(sentence)
  result = sentence.dup
  DIGIT_WORDS.each do |word|
    result.gsub!(/\b#{word}\b/, DIGIT_WORDS.index(word).to_s)
  end
  result
end

p word_to_digit('Please call me at ninelives five five five one two three four. Thanks.')
p word_to_digit('')




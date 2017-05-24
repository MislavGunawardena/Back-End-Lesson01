
# Method: alphabetic_number_sort
# i/p: Array of numbers between 0 and 19, arr
# o/p: The numbers should be sorted alphabetically based on the english words 
#      for them.
# 
# Edge cases:
#   i/p: []
#   i/p: Array with a single number, [3] etc.
# 
# Algorithm:
#   number_words = array containing one, two, three, ....., nineteen

#   arr_words = each element of arr is transformed to the correspondign word.
#               number_words[n]
#   sort arr_words alphabetically
#   arr_sorted_alphabetically = each element of arr_word is transformed into 
#   it's numeral form.
#   return arr_sorted_alphabetically

require 'pry'
NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven
                  twelve thirteen fourteen fifteen sixteen seventeen eighteen 
                  nineteen)

def alphabetic_number_sort(arr)
  arr_words = arr.map { |num| NUMBER_WORDS[num] }
  arr_words_sorted = arr_words.sort
  arr_words_sorted.map { |word| NUMBER_WORDS.index[word] }
end

p alphabetic_number_sort([1, 8, 9, 17])
p alphabetic_number_sort([]) == []
p alphabetic_number_sort([3]) == [3]
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
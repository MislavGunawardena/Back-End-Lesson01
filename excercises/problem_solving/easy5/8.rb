
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
#   numbers = array containing 0, 1, 2, ...., 19
#   number_words = array containing one, two, three, ....., nineteen
#   numbers_to_words = hash containing O => 'zero', 1 => 'one', and so on.
#   word_to_numbers = hash containing 'one' => 1 and so on.
# 
#   arr_words = each element of arr is transformed to the correspondign word.
#   sort arr_words alphabetically
#   arr_sorted_alphabetically = each element of arr_word is transformed into 
#   it's numeral form.
#   return arr_sorted_alphabetically

NUMBERS = (0..19).to_a
NUMBER_WORDS = %w(zero one two three four five six seven eight nine ten eleven
                  twelve thirteen fourteen fifteen sixteen seventeen eighteen 
                  nineteen)
NUMBERS_TO_WORDS = NUMBERS.zip(NUMBER_WORDS).to_h
WORDS_TO_NUMBERS = NUMBERS_TO_WORDS.invert

def alphabetic_number_sort(arr)
  arr_words = arr.map { |num| NUMBERS_TO_WORDS[num] }
  arr_words_sorted = arr_words.sort
  arr_words_sorted.map { |word| WORDS_TO_NUMBERS[word] }
end

p alphabetic_number_sort([1, 8, 9, 17])
p alphabetic_number_sort([]) == []
p alphabetic_number_sort([3]) == [3]
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
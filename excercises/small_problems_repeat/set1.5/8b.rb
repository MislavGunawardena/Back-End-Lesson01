NUMERALS = (0..19).to_a
NUMERAL_WORDS = %w(zero one two three four five six seven eight nine ten eleven
                   twelve thirteen fourteen fifteen sixteen seventeen eighteen
                   nineteen)
NUMERALS_TO_WORDS = NUMERALS.zip(NUMERAL_WORDS).to_h
WORDS_TO_NUMERALS = NUMERALS_TO_WORDS.invert
                   
def alphabetic_number_sort(arr)
  words = NUMERALS_TO_WORDS.values_at(*arr).sort
  WORDS_TO_NUMERALS.values_at(*words)
end

p WORDS_TO_NUMERALS
p alphabetic_number_sort([9, 13, 8])

p alphabetic_number_sort((0..19).to_a) == [
      8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
      6, 16, 10, 13, 3, 12, 2, 0
    ]

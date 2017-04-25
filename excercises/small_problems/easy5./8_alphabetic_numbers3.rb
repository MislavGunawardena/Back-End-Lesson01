WORDS_FOR_NUMBERS = %w(zero one two three four five six seven eight 
                       nine ten eleven twelve thirteen fourteen fifteen 
                       sixteen seventeen eighteen nineteen)
NUMBERS = (0..19).to_a
NUMBER_WORDS = NUMBERS.zip(WORDS_FOR_NUMBERS).to_h # => {1 => 'one', 2 => 'two'...

def alphabetic_number_sort(arr)
  NUMBER_WORDS.invert.values_at(*NUMBER_WORDS.values_at(*arr).sort)
end

p alphabetic_number_sort([4, 6, 9])

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort([0, 1, 3, 5, 12, 19, 9])

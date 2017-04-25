WORDS_FOR_NUMBERS = %w(zero one two three four five six seven eight 
                      nine ten eleven twelve thirteen fourteen fifteen 
                      sixteen seventeen eighteen nineteen)

# => {1 => 'one', 2 => 'two', 3 => 'Three',... , 19 => 'nineteen'}
NUMBERS_TO_WORDS = (0..19).to_a.zip(WORDS_FOR_NUMBERS).to_h 

# => {'one' => 1, 'two' => 2, 'three' => 3, ... , 'nineteen' => 19}
WORDS_TO_NUMBERS = NUMBERS_TO_WORDS.invert

def alphabetic_number_sort(arr)
  WORDS_TO_NUMBERS.values_at(*NUMBERS_TO_WORDS.values_at(*arr).sort)
end

p alphabetic_number_sort([4, 6, 9])

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort([0, 1, 3, 5, 12, 19, 9])

NUMERALS = (0..19).to_a
NUMERAL_WORDS = %w(zero one two three four five six seven eight nine ten eleven
                   twelve thirteen fourteen fifteen sizteen seventeen eighteen
                   nineteen)
                   
def indices(arr1, arr2)
  arr1.map { |item| arr2.index(item) }
end

def items_at(arr1, arr2)
  arr1.map { |item| arr2[item] }
end
                   
def alphabetic_number_sort(arr)
  number_words = items_at(arr, NUMERAL_WORDS)
  number_words.sort!
  indices(number_words, NUMERAL_WORDS)
end

p alphabetic_number_sort((0..19).to_a) == [
      8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
      6, 16, 10, 13, 3, 12, 2, 0
    ]

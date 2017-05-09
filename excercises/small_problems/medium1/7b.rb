NUMERAL_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  NUMERAL_WORDS.each do |word|
    sentence = sentence.gsub(/\b#{word}\b/, NUMERAL_WORDS.index(word).to_s)
  end
  
  sentence
end

p word_to_digit('abcd 4 5 6: 5.')
p word_to_digit(
  'Please call me at five five five one two three four. Thanks.'
) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
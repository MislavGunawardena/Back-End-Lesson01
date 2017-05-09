# If a problem looks straight forward, then look for the catch! Look into
# the test cases that were provided for clues. Spend a but of time trying to
# figure out how things might be different from what the solution might 
# 'obviously' be.
# Also, push the KB aside, take out a not paper, and jot down an algorithmic
# approach.
# Notice the spacing on lines following the instantiation of altered_words.
# The end of 'words.map' aligns with the word 'altered', not with the word
# 'words'
# Notice how the closing bracket in the final statement aligns with 'p' that
# is 3 statements above it. Should remember this convention concerning matched
# braces that span multiple lines.
# Also, problems in which segments of a string have to be transformed into 
# something else are good candidates for the gsub method, or the gsub! method.

NUMARAL_WORDS = %w(zero one two three four five six seven eight nine).freeze

def word_to_digit(sentence)
  words = sentence.split
  altered_words = words.map do |word|
    ending_punctuation = ''
    if word[-1].match(/[^a-z0-9]/i)
      ending_punctuation = word[-1]
      word = word[0..-2]
    end
    if NUMARAL_WORDS.include?(word)
      word = NUMARAL_WORDS.index(word).to_s
    end
    word + ending_punctuation
  end
  
  altered_words.join(' ')
end

p word_to_digit('Hello one two, three.')
p word_to_digit(
  'Please call me at five five five one two three four.'\
  ' Thanks.'
) == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

def reverse_sentence(sentence)
  array_of_words = sentence.split(' ')
  words_reversed = []
  array_of_words.each do |word|
    words_reversed.unshift(word)
  end
  words_reversed.join(' ')
end
  
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
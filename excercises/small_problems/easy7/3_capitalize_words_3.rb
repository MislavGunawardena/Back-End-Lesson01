def word_cap(string)
  words_array = string.split.map do |word| 
    word[0].upcase + word[1..-1].downcase
  end
  words_array.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
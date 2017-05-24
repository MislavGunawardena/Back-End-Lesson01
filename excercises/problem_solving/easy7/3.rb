def word_cap(str)
  words = str.split
  capitalized_words = words.map do |word| 
    if word.size == 1
      word.upcase
    else        
      word[0].upcase + word[1..-1].downcase
    end
  end
  
  capitalized_words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
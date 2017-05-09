def crunch(str)
  characters = []
  previous_character = ''
  
  str.chars.each_with_index do |chr, index|
    if chr == previous_character
      characters[index] = nil
    else
      characters[index] = chr
      previous_character = chr
    end
  end
  
  characters.compact.join
end

p crunch('aaaabbbbacczdddd')

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
def crunch(str)
  crunched_string = ''
  str.chars.each_with_index do |chr, index|
    crunched_string << chr unless str.chars[index] == str.chars[index + 1]
  end
  
  crunched_string
end

p crunch('aaaabbbbacczdddd')

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
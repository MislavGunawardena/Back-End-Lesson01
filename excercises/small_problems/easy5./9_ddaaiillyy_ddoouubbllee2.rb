def crunch(str)
  crunched_string = ''
  str.each_char do |chr|
    crunched_string << chr unless crunched_string[-1] == chr
  end
  crunched_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
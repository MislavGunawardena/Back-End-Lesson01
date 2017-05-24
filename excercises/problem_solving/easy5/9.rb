# method name: crunch
# arguments: A string
# side effect:
# return: A string where all consecutive duplicate characters of the i/p
#         argument are collapsed into a single character.
# 
# Edge cases:
#   crunch('') - empty string i/p
#   crunch('a') - a single character i/p
# 
# Algorithm:
#   str: string argument
#   crunched_string: ''
#   for each character in str: |chr|
#     append chr to crunched_string if the last character in crunched_string
#     is not equal to chr
#   return crunched_string

def crunch(str)
  crunched_string = ''
  str.each_char do |chr|
    crunched_string << chr unless crunched_string[-1] == chr
  end
  crunched_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
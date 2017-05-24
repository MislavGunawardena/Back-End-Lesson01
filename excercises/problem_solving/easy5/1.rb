# ascii_value method
# i/p string -> str
# o/p - sum of ascii values of every character in the string
# 
# characters => array of all the characters in str
# 
# sum = 0
# 
# for each character in characters array:
#   sum += ascii value of that character
# 
# return the value of sum
# 

def ascii_value(str)
  characters = str.chars
  sum = 0
  characters.each { |chr| sum += chr.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
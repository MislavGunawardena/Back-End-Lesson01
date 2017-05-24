# Method => cleanup
# i/p => a string str, consisting of words and non-alphabetic characters
# o/p => should return the i/p string with all the non-alphabetic characters
#        replaced by spaces.  
#        There should be only one space for consecutive non-alphabetic 
#        charatcers.
# 
# Edge cases:
#   cleanup('') - empty string i/p
#   cleanup('&54#@') - only non-alphabetic characters
# 
# Algorithm:
#   Using a regular expression method, replaces all occurences of consecutive
#   non-alphabetic characters in str with a single space ' '
#   Return str

def cleanup(str)
  str.gsub!(/[^a-z]+/i, ' ') if str.match(/[^a-z]+/i)
  str
end

p cleanup('$%I am$$^ ^&* fine&*.')
p cleanup('')
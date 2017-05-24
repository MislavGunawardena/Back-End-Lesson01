# *** Without regular expressions ***
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
#   chars_str = characters of str1
#   str2 = ''
#   for every element of chars_str: chr, index
#     if chr is alphabetic
#       str2 << chr
#     if chr is non-alphabetic and str[-1] != ' '
#       str2 << ' '
#   str1.replace(str2)
# 
#   return str2.

ALPHABETIC_CHARACTERS = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup!(str)
 characters = str.chars
 clean_string = ''
 characters.each do |chr|
   if ALPHABETIC_CHARACTERS.include?(chr)
     clean_string << chr
   else
     clean_string << ' ' unless clean_string[-1] == ' '
   end
 end
 
 str.replace(clean_string)
end

str = '$%I am$$^ ^&* fine&*.'
p cleanup(str)
p str
p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup('')
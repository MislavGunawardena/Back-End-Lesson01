# Method: palindrome?
# Argument: String, str
# Side effect: None
# Return: Boolean. Whether or not the argument string is a palindrome.
# Edge cases:
#   palindrome?('') : An empty character argument value.
#   palindrome?('a') : A single character argument value.
# 
# Algorithm:
#   str <- argument
#   str_reversed = Reverse of str
#   if str == str_reversed
#     return true
#   otherwise
#     return false

def palindrome?(str)
  str == str.reverse
end

p palindrome?('a')
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
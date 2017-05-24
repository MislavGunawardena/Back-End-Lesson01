# Method: uppercase?
# Argument: string, str
# Side effects: none
# Return: boolean, true if all alphabetic chatacters are uppercase, false 
#         otherwise.
# Edge cases:
#   uppercase?('') == true
# 
# Algorithm:
#   str_upcase: The value obtained by converting all the characters of str
#               to upcase
#   return: str == str_upcase

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

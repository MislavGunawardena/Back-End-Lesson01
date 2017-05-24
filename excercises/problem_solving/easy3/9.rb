# Method: real_palindrome?
# Argument: String, str
# Side effects: None
# Return: Boolean. Whether or not argument string is a real palindrome.
# Edge cases:
#   real_palindrome?('')
#   real_palindrom?('a') :Single character input.
#   real_palindrom?(' #$') :Only non-alphanumeric inputs.
# 
# Algorithm:
#   str <= Input argument
#   str_modified = convert all uppercase letters in str to lower case and
#                  remove all non-alphanumeric characters.
#   Return the value of palindrome?(str_modified)

def palindrome?(str)
  str == str.reverse
end


def real_palindrome?(str)
  palindrome?(str.downcase.delete('^a-z','^0-9'))
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p p real_palindrome?('123ab321') == false

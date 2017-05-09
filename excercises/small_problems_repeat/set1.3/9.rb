def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  palindrome?(str.delete('^a-zA-Z0-9').downcase)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
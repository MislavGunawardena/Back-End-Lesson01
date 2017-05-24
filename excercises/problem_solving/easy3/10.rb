# Method: palindromic_number
# Arguments: Integer, num
# Side effects: None
# Return: true or false
# Edge cases:
#   palindromic_number?(9) : true, single digit number argument
# 
# Algorithm:
#   num <= argument
#   return: num.to_s == num.to_s.reverse

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
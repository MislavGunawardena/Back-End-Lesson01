# Method: letter_percentages
# Arguments: String. has at least one character. string
# Side effects: None
# Return: A hash. should indicate the percentage of each kind of character:
#         lowercase, uppercase, and neither.
# Edge cases:
#   None, since we are allower to assume that the string has at least 1
#   character.
# 
# Algorithm:
#   string <= argument
#   1) percentages = {}
#   2) size = size of string
#   3) Count the number of lower case letters and the corresponding percentage.
#      Assign the percentage to percentages[:lowercase]
#   4) Similarly to step 3, determine percentages[:uppercase] and
#      percentages[:neither]
#   5) Return percentages

def letter_percentages(string)
  percentages = {}
  size = string.size
  percentages[:lowercase] = (100 * string.count('a-z') / size.to_f)
  percentages[:uppercase] = (100 * string.count('A-Z') / size.to_f)
  percentages[:neither] = (100 * string.count('^a-zA-Z') / size.to_f)
  percentages
end

p letter_percentages('abCdef 123') == { 
  lowercase: 50, uppercase: 10, neither: 40 
}
p letter_percentages('AbCd +Ef') == { 
  lowercase: 37.5, uppercase: 37.5, neither: 25 
}
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

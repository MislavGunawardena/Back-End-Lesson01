# This particular approach is just fantastic! I should go through other 
# problems and examine whether I can take this approach with them!

def letter_percentages(str)
  total_characters = str.size
  { lowercase: (100 * str.count('a-z') / total_characters.to_f).round(1),
    uppercase: (100 * str.count('A-Z') / total_characters.to_f).round(1),
    neither: (100 * str.count('^a-zA-Z') / total_characters.to_f).round(1) }
end

p letter_percentages('abcd    ABCD')

p letter_percentages('abCdef 123') == 
  { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == 
  { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

def letter_percentages(str)
  lowercase_count = str.count('a-z')
  uppercase_count = str.count('A-Z')
  neither_count = str.count('^a-zA-Z')
  total_count = str.size
  
  percentages = { 
    lowercase: (100 * lowercase_count / total_count.to_f).round(1),
    uppercase: (100 * uppercase_count / total_count.to_f).round(1),
    neither: (100 * neither_count / total_count.to_f).round(1)
  }
end

p letter_percentages('abcd    ABCD')

p letter_percentages('abCdef 123') == 
  { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == 
  { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

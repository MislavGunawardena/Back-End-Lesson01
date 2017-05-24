def letter_case_count(str)
  case_count = {}
  characters = str.chars
  
  case_count[:lowercase] = characters.count { |chr| chr.match(/[a-z]/) }
  case_count[:uppercase] = characters.count { |chr| chr.match(/[A-Z]/) }
  case_count[:neither] = characters.count { |chr| chr.match(/[^a-zA-Z]/) }
  
  case_count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
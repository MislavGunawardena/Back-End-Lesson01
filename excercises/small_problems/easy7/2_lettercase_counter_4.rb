#ranges can be used within a case statement

def letter_case_count(string)
  string.chars.inject({lowercase: 0, uppercase: 0, neither: 0}) do |count, chr|
    case chr
    when 'a'..'z' then count[:lowercase] += 1
    when 'A'..'Z' then count[:uppercase] += 1
    else               count[:neither] += 1
    end
    count
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
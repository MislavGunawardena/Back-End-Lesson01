#ranges can be used within a case statement

def letter_case_count(string)
  letter_count = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each_with_object(letter_count) do |chr, count|
    count[:lowercase] += 1 if ('a'..'z').cover?(chr)
    count[:uppercase] += 1 if ('A'..'Z').cover?(chr)
    count[:neither] += 1 unless (('a'..'z').to_a + ('A'..'Z').to_a).include?(chr)
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
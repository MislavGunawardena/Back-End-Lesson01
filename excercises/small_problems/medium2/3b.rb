def letter_percentages(str)
  count, percentages = {}, {}
  count[:lowercase] = str.count('a-z')
  count[:uppercase] = str.count('A-Z')
  count[:neither] = str.count('^a-zA-Z')
  total_characters = str.size
  
  count.keys.each do |type|
    percentages[type] = (100 * count[type] / total_characters.to_f).round(1)
  end
  
  percentages
end

p letter_percentages('abcd    ABCD')

p letter_percentages('abCdef 123') == 
  { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == 
  { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

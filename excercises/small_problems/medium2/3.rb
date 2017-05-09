def letter_percentages(str)
  count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |chr|
    case
    when chr.match(/[a-z]/) then count[:lowercase] += 1
    when chr.match(/[A-Z]/) then count[:uppercase] += 1
    else                         count[:neither] += 1
    end
  end
  
  total_characters = count.values.inject(&:+)
  percentages = count.map do |catagory, number|
    [catagory, ( 100 * number.to_f / total_characters.to_f).round(1)]
  end
  percentages.to_h
end

p letter_percentages('abcd    ABCD')
p letter_percentages('abCdef 123') == 
  { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == 
  { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

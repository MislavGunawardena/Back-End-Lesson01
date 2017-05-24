def position_suffix(num)
  case
  when [11, 12, 13].include?(num % 100) then 'th'
  when num % 10 == 1                    then 'st'
  when num % 10 == 2                    then 'nd'
  when num % 10 == 3                    then 'rd'
  else                                       'th'
  end
end

def century(year)
  century = (year - 1) / 100 + 1
  "#{century}#{position_suffix(century)}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
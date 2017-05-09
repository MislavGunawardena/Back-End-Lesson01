def position(number)
  number = number.to_s
  last_two_digits = number[-2..-1]
  last_digit = number[-1]
  
  if ['11', '12', '13'].include?(last_two_digits)
    number + 'th'
  elsif last_digit == '1'
    number + 'st'
  elsif last_digit == '2'
    number + 'nd'
  elsif last_digit == '3'
    number + 'rd'
  else
    number + 'th'
  end
end

def century(year)
  century = ((year - 1) / 100) + 1
  position(century)
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
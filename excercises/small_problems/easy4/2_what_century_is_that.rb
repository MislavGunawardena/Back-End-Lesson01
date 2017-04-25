def century(year)
  century = ((year - 1) / 100) + 1
  last_2_digits = century % 100
  last_digit = century % 10
  if [11, 12, 13].include?(last_2_digits)
    ending_text = 'th'
  elsif last_digit == 1
    ending_text = 'st'
  elsif last_digit == 2
    ending_text = 'nd'
  elsif last_digit == 3
    ending_text = 'rd'
  else
    ending_text = 'th'
  end
  
  century.to_s + ending_text
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

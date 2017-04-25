def leap_year?(year)
  if year < 1752
    if year % 4 == 0
      return true
    else
      return false
    end
  end
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true
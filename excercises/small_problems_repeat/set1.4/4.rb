require 'pry'
def leap_year?(year)
  return (year % 4 == 0) if year < 1752
  
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

def div_by?(num1, num2)
  num1 % num2 == 0
end

def leap_year?(year)
  return div_by?(year, 4) if year < 1752
  return true if div_by?(year, 400)
  
  div_by?(year, 4) && !div_by?(year, 100) 
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
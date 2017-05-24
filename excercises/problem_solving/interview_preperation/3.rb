# algorithm: year
#   friday_13th_number = 0
#   date = Jan 1st of the year
#   loop:
#     test whether date is 13'th and friday, if it is increment
#     firday_13th_number.
#     increment date by 1
#     break out from loop if year of date is (year + 1)
#   return friday_13th_number

require 'date'
require 'pry'

def friday_13th?(year)
  friday_13th_number = 0
  date = Date.new(year, 1, 13)
  loop do
    friday_13th_number += 1 if date.friday?
    date = date.next_month
    break if date.year == (year + 1)
  end
  
  friday_13th_number
end

p friday_13th?(1986)

# I shoould add one more thing to the list of things I should do habitually.
# While running a program after each line, I should anticipate the output
# based on the input parameters provided. I should take a moment to analyze
# and decide what I anticipate and why. If what I anticipate does not happen,
# then I should reason out why that is and determine what exactly the mistake
# was, be able to explain it, before making changes and running it again.

require 'date'
def friday_13th(year)
  friday_13th_no = 0
  date = Date.new(year).prev_day
  loop do
    date = date.next
    friday_13th_no += 1 if date.friday? && date.day == 13
    break if date.month == 12 && date.day == 31
  end
  
  friday_13th_no
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
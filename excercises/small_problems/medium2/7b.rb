# I shoould add one more thing to the list of things I should do habitually.
# While running a program after each line, I should anticipate the output
# based on the input parameters provided. I should take a moment to analyze
# and decide what I anticipate and why. If what I anticipate does not happen,
# then I should reason out why that is and determine what exactly the mistake
# was, be able to explain it, before making changes and running it again.

require 'date'
def friday_13th(year)
  friday_13_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do |_|
    friday_13_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  friday_13_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
# If there is one thing I should learn via my experience of solving this
# problem, it's this: I should continously run a program anytime I add
# a line of code, or anytime I alter a line of code. That will take a lot less
# time than trying to debug errors later. I should be bloody minded about this,
# and I should do it even when I can see in my mind the next few steps and
# even when I am sure that the stepsI see are accurate.

require 'pry'
def letter_case_count(str)
  letter_count = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |chr|
    #binding.pry
    letter_count[:lowercase] += 1 if chr.match(/[a-z]/)
    letter_count[:uppercase] += 1 if chr.match(/[A-Z]/)
    letter_count[:neither] += 1 if chr.match(/[^a-z]/i)
  end
  
  letter_count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
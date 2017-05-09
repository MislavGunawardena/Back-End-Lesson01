def uppercase?(string)
  string.upcase == string
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# I think it makes sense for uppercase?('') to return true.
# The condition should be that every single alphabetic character contained in
# the string should be upper case.
# That cobdition is fulfilled when there are no alphabetic characters.
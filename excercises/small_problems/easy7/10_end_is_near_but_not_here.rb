# penultimate <= a string
# returns next to last word of the argument
# can assume that the input string will always contain at least 2 words.

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
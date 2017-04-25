# Write a method that accepts a string argument and returns a boolean value
# that indicates whether the argument string has a balanced set of paranthesis.

# if string does not either contain ( or ) then return true
# if string contains only one of ( or ) then return false
# return true if '(' comes before ')'

#You have to use common sense

def balance(string)
  return true unless string.include?('(') || string.include?(')')
  return false unless (string.include?('(') && string.include?(')'))
  string.index('(') <= string.index(')')
end

#examples
p balance('hi')
p balance('(hi')
p balance('(hi)')
p balance('')
p balance(')(')
p balance(')()')
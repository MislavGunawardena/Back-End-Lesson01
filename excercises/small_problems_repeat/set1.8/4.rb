# This is probably the kind of problem that would qualify as a problem of
# medium difficulty. If it had been presented in isolation, by itself then
# it would have been a lot harder. The fact that it follws the 3'rd problem
# is what makes it easy. Half the work is done in the 3'rd problem.
# When doing problems of medium difficulty, I should try to find ways to divide 
# up the problem into 2 or 3 sub problems. I should rely on my intuition to do
# this. My first question should not be 'how can I solve this problem?', it
# should be, how can I divide this problem into subproblems?

def substrings_at_start(str)
  substrings = []
  str.size.times do |index|
    substrings << str[0..index]
  end
  
  substrings
end

def substrings(str)
  substrings = []
  str.size.times do |index|
    substrings << substrings_at_start(str[index..-1])
  end
  
  substrings.flatten
end

p substrings('abcde') == [
    'a', 'ab', 'abc', 'abcd', 'abcde', 
    'b', 'bc', 'bcd', 'bcde',
    'c', 'cd', 'cde',
    'd', 'de',
    'e'
  ]
# Method: computer
# Argument: String. A phrase of a mathematical expression
# Side effects: None
# Return value: An integer. Should be the result of the evaluation of the 
#               argument integer.
# Edge cases:
#   computer('') == 0
#   computer('three') == 3
# 
# Algorithm:
#   math_phrase
#   OPERATORS = %w(plus minus)
#   NUMBER_WORDS = %w(one two three four five siz seven eight nine)
#   words = words of math_phrase
#   result = words.first.to_i
#   loop:
#     break if words empty
#     operator = words.shift
#     number = words.shift
#     update result
#   return result

OPERATORS = %w(plus minus)
NUMBER_WORDS = %w(zero one two three four five six seven eight nine)

def computer(math_phrase)
  words = math_phrase.split
  first_number = words.shift
  if first_number == first_number.to_i.to_s
    result = first_number.to_i
  else
    result = NUMBER_WORDS.index(first_number).to_i
  end
  loop do
    break if words.empty?
    operator = words.shift
    number = words.shift
    if number == number.to_i.to_s
      number = number.to_i
    else
      number = NUMBER_WORDS.index(first_number).to_i
    end
    case operator
    when 'plus'  then result += number
    when 'minus' then result -= number
    end
  end
  
  result
end

p computer('')
p computer('three')
p computer('2 plus two')
p computer('seven minus six')
p computer('zero plus 6 minus 10')

# Note: I should look at the test cases that have been provided and use them
# to refine my understanding of the problem. Especially the complexity and
# scope of it. In this case, the initial problem was only to evaluate the
# simplest of math phrases involving just one operation. That being the case,
# given that nothing in the actual wording of the problem indicated that
# the solution should handle multiple operations, I should have limited the
# solution, or at least the initial solution, to handling single operation
# phrases.
# Also:
# I did find the solution to the problem and that's great! I feel I can handle
# problems of this level of complexity directly. However, I could have also
# made an attempt to decompose it. Doing so is very instructive. The simpler 
# scope of handling a single operation phrase is the proper way of decomposing
# this problem. If I am stuck and unable to devise an algorithm, then 
# decomposing the problem is probably the way to move forward.
# Decomposition of the problem:
#   1) Determine the process of evaluating a single operation phrase
#   2) result = the result of evaluating the first 3 words
#   3) Replace the first 3 words of math_phrase with result
#   4) Repeat steps 2 and 3 until math_phrase contains just 1 word
#   5) Return result

# Method: mathphrases
# Argument: integer, num
# Side effects: none
# Return: A string describing a combined mathematical operation. The number of
#         operators should be equal to the integer argument provided during
#         method invocation.
# Edge cases:
#   mathphrases(0) == ''
# 
# Algorithm:
#   num <= argument
#   1) numbers = select any (num + 1) numbers from NUMBERS. Repeats ok.
#   2) operators = select any (num) operators from OPERATORS. Repeats ok.
#   3) math_phrase = numbers.first : duplicate!
#   5) for every element in operators: |operator, index|
#        math_phrase << space + operator
#        math_phrase << space + numbers[i + 1]
#   6) return math_phrase 


NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = ['plus', 'minus', 'times', 'divided by']

def mathphrases(num)
  return '' if num == 0
  numbers = []
  (num + 1).times { |_| numbers << NUMBERS.sample }
  operators = []
  num.times { |_| operators << OPERATORS.sample }
  
  math_phrase = ''
  math_phrase << numbers.first
  operators.each_with_index do |operator, index|
    math_phrase << " #{operator} #{numbers[index + 1]}"
  end
  
  math_phrase
end

p mathphrases(0)
p mathphrases(2)
p mathphrases(3)

# Note: I have to be very careful when initializing a string. If a string is
# being initialized to the value of an existing string object, it will often
# be a good idea to use to dup method. Alternately, the string can be 
# initialized to '' and then << can be used to concatenate another object
# to it.

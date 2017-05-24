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
#   1) Determine the process of evaluating a single operation phrase
#   2) Modify this process so that it can handle numeral values in the string.
#   3) result = the result of evaluating the first 3 words
#   4) Replace the first 3 words of math_phrase with result
#   5) Repeat steps 2 and 3 until math_phrase contains just 1 word
#   6) Return result

require 'pry'

OPERATORS = %w(plus minus)
NUMBER_WORDS = %w(zero one two three four five six seven eight nine)

def value_of(number_string)
  if number_string == number_string.to_i.to_s
    number_string.to_i
  else
    NUMBER_WORDS.index(number_string)
  end
end

def simple_operation(math_phrase)
  words = math_phrase.split
  return value_of(math_phrase).to_i if words.size <= 1
  
  first_number = value_of(words.first)
  second_number = value_of(words.last)
  operation = words[1]
  case operation
  when 'plus'  then first_number + second_number
  when 'minus' then first_number - second_number
  end
end

def computer(math_phrase)
  words = math_phrase.split
  number_of_operations = (words.size - 1) / 2
  return simple_operation(math_phrase) if number_of_operations <= 1
  
  result = 0
  loop do
    break if words.size == 1
    next_operation = words.first(3).join(' ')
    words.slice!(0..2)
    result = simple_operation(next_operation)
    words.unshift(result)
  end
  
  result
end

p computer('')
p computer('four')
p computer('3 minus eight')
p computer('four minus nine plus eight')
p computer('four minus nine plus eight plus nine minus one plus zero')





# Note: I've been making the == mistake too  often. Maybe I should do a drilling
# in on that.
# If I intend a single guard clause to handle more than 1 type of scenario,
# then I should make sure that the associated conditional expression covers
# both of them. This often may mean using <= and >= instead of < and >.
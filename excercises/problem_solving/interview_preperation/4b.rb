NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = ['plus', 'minus', 'times', 'divided by']

def mathphrases(num)
  numbers = (NUMBERS * num).sample(num + 1)
  operators = (OPERATORS * num).sample(num)
  
  numbers.zip(operators).flatten.compact.join(' ')
end

p mathphrases(1)
p mathphrases(2)
p mathphrases(3)
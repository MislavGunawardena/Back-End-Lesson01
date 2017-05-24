DIGIT_CHARACTERS = ('0'..'9').to_a

def integer_to_string(num)
  string = ''
  loop do
    digit = num % 10
    num = num / 10
    string.prepend(DIGIT_CHARACTERS[digit])
    break if num == 0
  end
  
  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
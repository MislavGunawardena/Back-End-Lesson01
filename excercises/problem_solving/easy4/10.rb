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

def signed_integer_to_string(num)
  if num > 0
    "+#{integer_to_string(num)}"
  elsif num == 0
    "0"
  else
    "-#{integer_to_string(-num)}"
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) == '0'
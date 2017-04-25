DIGITS = ('0'..'9').to_a

def integer_to_string(number)
  string = ''
  begin
    number, digit = number.divmod(10)
    string.prepend(DIGITS[digit])
  end while number > 0
  string
end

def signed_integer_to_string(number)
  if number > 0
    '+' + integer_to_string(number)
  elsif number < 0
    '-' + integer_to_string(-number)
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
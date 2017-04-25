DIGITS = ('0'..'9').to_a

def integer_to_string(number)
  string = ''
  begin
    number, digit = number.divmod(10)
    string.prepend(DIGITS[digit])
  end while number > 0
  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
NUMERIC_CHARACTERS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3',
                       4 => '4', 5 => '5', 6 => '6', 7 => '7',
                       8 => '8', 9 => '9' }

def integer_to_string(number)
  string_representation = ''
  loop do
    number, digit = number.divmod(10)
    string_representation.prepend(NUMERIC_CHARACTERS[digit])
    break if number == 0
  end
  string_representation
end

# def signed_integer_to_string(number)
#   if number > 0
#     '+' + integer_to_string(number)
#   elsif number < 0
#     '-' + integer_to_string(-number)
#   else
#     '0'
#   end
# end

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when 1  then "+#{integer_to_string(number)}"
  else         "0"
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
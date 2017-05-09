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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
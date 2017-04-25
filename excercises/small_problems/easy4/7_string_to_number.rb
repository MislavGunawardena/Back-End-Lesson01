def string_to_integer(string)
  integer = 0
  digit_position = 1
  numeric_characters = ('0'..'9').to_a
  string.chars.reverse.each do |chr|
    digit = numeric_characters.index(chr)
    integer += (digit * (10 ** (digit_position - 1)))
    digit_position += 1
  end
  integer
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
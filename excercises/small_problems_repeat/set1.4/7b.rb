def hexadecimal_to_integer(str)
  value = 0
  hex_digits = ('0'..'9').to_a + ('a'..'f').to_a
  str.downcase.chars.each { |chr| value = value * 16 + hex_digits.index(chr) }
  value
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('510') == 1296
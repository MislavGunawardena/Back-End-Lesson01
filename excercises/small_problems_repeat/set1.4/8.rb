def string_to_integer(str)
  value = 0
  numeric_characters = ('0'..'9').to_a
  
  str.chars.each do |chr|
    value = value * 10 + numeric_characters.index(chr)
  end
  
  value
end

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
DIGITS = ('0'..'9').to_a

def string_to_integer(str)
  number = 0
  str.chars.each do |chr|
    number = 10 * number + DIGITS.index(chr)
  end
  number
end

def string_to_signed_integer(str)
  case
  when str[0] == '-' then (-1 * string_to_integer(str.slice(1..-1)))
  when str[0] == '+' then  string_to_integer(str.slice(1..-1))
  else                     string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
DIGITS = ('0'..'9').to_a

def string_to_integer(str)
  number = 0
  str.chars.each do |chr|
    number = 10 * number + DIGITS.index(chr)
  end
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
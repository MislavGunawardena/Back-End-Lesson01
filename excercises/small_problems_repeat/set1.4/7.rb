# def string_to_integer(str)
#   sum = 0
#   decimal_place = 1
#   numeric_characters = ('0'..'9').to_a
  
#   str.reverse.chars.each do |chr|
#     sum += numeric_characters.index(chr) * (10 ** (decimal_place - 1))
#     decimal_place += 1
#   end
  
#   sum
# end

def string_to_integer(str)
  value = 0
  numeric_characters = ('0'..'9').to_a
  
  str.chars.each do |chr|
    value = value * 10 + numeric_characters.index(chr)
  end
  
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
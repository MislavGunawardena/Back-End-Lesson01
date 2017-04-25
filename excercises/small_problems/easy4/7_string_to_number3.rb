DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 } 

def string_to_integer(string)
  string.chars.each_with_object(0) { |chr, sum| sum = sum * 10 + DIGITS[chr] }
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
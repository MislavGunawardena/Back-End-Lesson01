DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 } 

def string_to_integer(string)
  sum = 0
  string.chars.each do |chr|
    sum = sum * 10 + DIGITS[chr]
  end
  sum
end

def string_to_signed_integer(string)
  string = string[1..-1] if string[0] == '+'
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  else           string_to_integer(string)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
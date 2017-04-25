DIGITS = { '1' => 1,  '2' => 2,  '3' => 3,  '4' => 4,  '5' => 5,
           '6' => 6,  '7' => 7,  '8' => 8,  '9' => 9,  '0' => 0, 
           'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 
           'f' => 15 }

def hexadecimal_to_integer(string)
  sum = 0
  string.downcase.chars.each do |chr|
    sum = sum * 16 + DIGITS[chr]
  end
  sum
end

puts hexadecimal_to_integer('4D9f') == 19871
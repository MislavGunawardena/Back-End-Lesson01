def hexadecimal_to_integer(string) 
  sum = 0
  string.downcase.chars.each do |chr|
    if chr.ord < 'a'.ord 
      digit = chr.ord - '0'.ord
    else 
      digit = chr.ord - 'a'.ord + 10
    end
    sum = sum * 16 + digit
  end
  sum
end

puts hexadecimal_to_integer('1f')
puts hexadecimal_to_integer('4D9f') == 19871
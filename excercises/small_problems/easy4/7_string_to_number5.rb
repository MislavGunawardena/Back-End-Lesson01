def string_to_integer(string)
  sum = 0
  string.downcase.chars.each do |chr|
    digit = chr.ord - '0'.ord
    sum = sum * 10 + digit
  end
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
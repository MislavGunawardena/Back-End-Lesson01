def digit_list(number)
  digits = []
  while number > 0
    digit = number % 10
    digits.unshift(digit)
    number = number / 10
  end
  digits.join.to_i
end

puts digit_list(12345).to_s
puts digit_list(7).to_s
puts digit_list(375290).to_s
puts digit_list(444).to_s


def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345).to_s
puts digit_list(7).to_s
puts digit_list(375290).to_s
puts digit_list(444).to_s

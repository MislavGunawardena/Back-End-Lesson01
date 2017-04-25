def sum(number)
  total = 0
  while number > 0
    total += number % 10
    number = number / 10
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
numbers = []

while numbers.size < 5
  numbers.push(rand(0..99))
  counter += 1
end

puts numbers
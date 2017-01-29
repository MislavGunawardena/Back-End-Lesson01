loop do
  number = rand(100)
  break if number.between(0,10)
  puts number
end
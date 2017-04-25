def titleize(str)
  arr = str.split(' ')
  arr.each { |word| word.capitalize! }
  arr.join(' ')
end

puts titleize("How are you doing today?")
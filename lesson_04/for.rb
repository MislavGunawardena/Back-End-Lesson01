alphabet = "abcdefghijklmnopqrstuvwxyz"

for character in alphabet.chars
  print character
  string1 = "test"
end

puts string1

counter = 0
loop do
  break if counter == alphabet.size
  character = alphabet[counter]
  print character
  counter += 1
  string2 = "test2"
end

#puts test2 #causes an undefined method error.
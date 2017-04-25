HEX_CHARACTERS = ('0'..'9').to_a + ('a'..'f').to_a

def sequence(n)
  characters = []
  n.times { |_| characters << HEX_CHARACTERS.sample }
  characters.join
end

def uuid
  [sequence(8), sequence(4), sequence(4), sequence(4), sequence(12)].join('-')
end

puts uuid
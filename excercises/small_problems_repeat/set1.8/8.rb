ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a
VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
CONSONANTS = ALPHABET - VOWELS

def double_consonants(str)
  str.chars.map { |chr| CONSONANTS.include?(chr) ? chr * 2 : chr }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
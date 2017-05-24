CONSONANTS = ('a'..'z').to_a - ['a', 'e', 'i', 'o', 'u']

def double_consonants(str)
  characters = str.chars
  characters.map! do |chr|
    if CONSONANTS.include?(chr.downcase)
      chr * 2
    else
      chr
    end
  end
  characters.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
def double_consonants(str)
  consonants = ('a'..'z').to_a - 'aeiou'.chars
  str.chars.map { |ch| consonants.include?(ch.downcase) ? ch * 2 : ch }.join
end

p double_consonants('abcdefg')
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""


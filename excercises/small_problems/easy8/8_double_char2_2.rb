CONSONANTS = ('a'..'z').to_a - %w(a e i o u)

def double_consonants(string)
  doubled_consonant_string = ''
  string.each_char do |chr|
    doubled_consonant_string << chr
    doubled_consonant_string << chr if CONSONANTS.include?(chr.downcase)
  end
  
  doubled_consonant_string
end

p double_consonants('abcdef')

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
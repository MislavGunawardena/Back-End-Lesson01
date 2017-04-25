def consonant?(chr)
  !!chr.match(/[a-z]/i) && !!chr.match(/[^aeiou]/i)
end

def double_consonants(string)
  doubled_consonant_string = ''
  string.each_char do |chr|
    if consonant?(chr)
      doubled_consonant_string << chr << chr
    else
      doubled_consonant_string << chr
    end
  end
  
  doubled_consonant_string
end

p double_consonants('abcdef')

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
ALPHABETIC_CHARACTERS = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup(str)
  clean_string = ''
  previous_character = ''
  str.each_char do |chr|
    if ALPHABETIC_CHARACTERS.include?(chr)
      clean_string << chr 
    elsif (ALPHABETIC_CHARACTERS + ['']).include?(previous_character)
      clean_string << ' '
    end
  
    previous_character = chr
  end
  
  clean_string
end

p cleanup('abc!df')
p cleanup("---what's my +*& line?") == ' what s my line '
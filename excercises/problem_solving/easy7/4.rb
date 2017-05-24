def swapcase(str)
  characters = str.chars
  swapped_characters = characters.map do |chr| 
    chr.match(/[a-z]/) ? chr.upcase : chr.downcase
  end
  
  swapped_characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
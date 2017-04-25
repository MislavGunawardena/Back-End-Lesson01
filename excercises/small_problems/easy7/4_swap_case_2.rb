def swapcase(string)
  characters = string.chars
  characters.map! do |chr|
    if chr.match(/[a-z]/)
      chr.upcase
    elsif chr.match(/[A-Z]/)
      chr.downcase
    else
      chr
    end
  end
  
  characters.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts swapcase('') == ''
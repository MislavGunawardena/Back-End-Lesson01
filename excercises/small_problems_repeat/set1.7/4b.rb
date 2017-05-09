def swapcase(str) 
  str.gsub(/./) { |chr| chr.match(/[a-z]/) ? chr.upcase : chr.downcase }
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
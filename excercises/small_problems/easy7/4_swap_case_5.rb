def swapcase(string)
  string.gsub(/./) { |chr| chr[/[a-z]/] ? chr.upcase : chr.downcase }
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts swapcase('') == ''
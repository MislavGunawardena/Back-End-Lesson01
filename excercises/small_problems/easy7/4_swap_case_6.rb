def swapcase(string)
  string.gsub(/[a-zA-Z]/) { |chr| chr[/[a-z]/] ? chr.upcase : chr.downcase }
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts swapcase('') == ''
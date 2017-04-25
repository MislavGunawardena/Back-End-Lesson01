def swapcase(string)
  string.tr('a-zA-Z', 'A-Za-z')
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts swapcase('') == ''
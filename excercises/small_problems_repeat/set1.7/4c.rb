def swapcase(str) 
  str.tr('a-zA-Z', 'A-Za-z')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
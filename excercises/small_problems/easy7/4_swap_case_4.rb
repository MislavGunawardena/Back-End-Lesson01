
def swapcase(string)
  string.gsub(/[a-zA-Z]/) { |c| c.match(/[a-z]/) ? c.upcase : c.downcase }
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts swapcase('') == ''
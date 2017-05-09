def stringy(number)
  string = ''
  chr = '1'
  number.times do |index|
    string << chr
    chr == '1' ? chr = '0' : chr = '1'
  end
  
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
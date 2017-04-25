def stringy(number)
  str = ''
  number.times do |n|
    str += '1' if n.even?
    str += '0' if n.odd?
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''

def hexadecimal?(str)
  is_hex = true
  str.each_char do |chr|
    is_hex = false unless chr.match(/[a-fA-F0-9]/)
  end
  is_hex
end

puts hexadecimal?('a4')
puts hexadecimal?('af45f3')
puts hexadecimal?('2738sduifh')
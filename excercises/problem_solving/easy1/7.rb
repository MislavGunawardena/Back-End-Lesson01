# Method: stringy
# Argument: integer, num
# Side effects: None
# Return: String. Alterating  1's and 0's. A total of num 1's and 0's
# Edge cases:
#   i/p: 0
# 
# Algorithm:
#   str = ''
#   Do the folllowing num times to index = 1, 2, 3, ..., num
#     if index is odd
#       str << '1'
#     otherwise
#       str << '0'
#   Return str

def stringy(num)
  str = ''
  1.upto(num) do |index|
    if index.odd?
      str << '1'
    else
      str << '0'
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
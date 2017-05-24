# Method: max_rotation
# Arguments: integer, number
# Side effects: None
# Return: integer, the result of subjecting the argument to the maximum
#         rotation process.
# Edge cases:
#   max_rotation(9) : A signle digit argument
# 
# Algorithm:
#   1) digit_characters = all the digit characters of number
#   2) size = digit_characters.size
#   3) index = 0
#   4) Loop:
#        a) break if index == size - 1
#        b) displaced_digit = element of digit_characters at index
#        c) remove element at index from digit_characters
#        d) push displaced_digit to the end of digit_characters
#        e) index += 1
#   5) Return digit_characters.join.to_i

def max_rotation(number)
  digit_characters = number.to_s.chars
  size = digit_characters.size
  index = 0
  loop do
    break if index == size - 1
    displaced_digit = digit_characters.delete_at(index)
    digit_characters.push(displaced_digit)
    index += 1
  end
  
  digit_characters.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
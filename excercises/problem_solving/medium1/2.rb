# Write a method that can rotate the last n digits of a number. For example:
# You may assume that n is always a positive integer.

# Method: rotate_rightmost_digits
# Arguments: 2 integers, number and n
# Side effects: None
# Return: Integer. Should equal to the rightmost number2 digits of number1
#         being rotated.
# Edge cases:
#   n = 1
#   number = 1
#   rotate_rightmost_digits(1, 1)
# 
# Algorithm:
#   number, n <- arguments
#   1) digit_characters = all the digit characters of number
#   2) element_at_n = The element of digit_characters at n'th position counting
#                     in reverse from the last element
#   3) remove element_at_n from digit_characters
#   4) push element_at_n to digit characters
#   5) rotated_ number = convert digit_characters to it's string form and then 
#                     convert to corresponding integer value

def rotate_rightmost_digits(number, n)
  digit_characters = number.to_s.chars
  digit_at_n = digit_characters.delete_at(-n)
  digit_characters << digit_at_n
  digit_characters.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
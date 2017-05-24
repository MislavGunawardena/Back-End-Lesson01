# Method: sum
# Argument: A positive integer, num
# Side effects: None
# Return: Integer, sum of the individual digits of num
# Edge cases:
#   None
# Algorithm: 
#   num_string = transform num into a string
#   digit_characters = Array containing all the individual characters of
#                      num_string.
#   digits = Tranform digit_characters into another array by coverting all
#            elements into numeric digits.
#   Return the sum of digits

def sum(num)
  num.to_s.chars.map { |chr| chr.to_i }.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
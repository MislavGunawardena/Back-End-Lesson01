# Method: digit_list
# Argument: A positive integer, num
# Side effects: None
# Return: Array. A list of digits in the number.
# Edge cases:
#   N/A
# 
# Algorithm:
#   num <- argument
#   num_string = convert num to a string
#   digits = []
#   for each character in num_string: |chr|
#     digit = convert chr to the corresponding digit
#     Push digit to the digits array.
#   return digits

def digit_list(num)
  num_string = num.to_s
  digits = []
  num_string.each_char { |chr| digits << chr.to_i }
  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

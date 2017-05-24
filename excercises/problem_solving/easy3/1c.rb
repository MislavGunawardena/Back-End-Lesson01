# User input: 6 integers, num1, num2, num3, num4, num5, last_num.
# Display: State whether final_num appears among the first 5.
# 
# Algorithm:
#   numbers = []
#   Do for index = 0, 1, ....,4
#     Prompt for the (index + 1)'th number
#     Place index'th number entered by user into numbers.
#   Prompt use for last number
#   last_num = last number entered by user
#   If numbers contains the last_num
#     State that numbers contains last_num 
#   Otherwise
#     State that it doesn't

POSITIONS = %w(1st 2nd 3rd 4th 5th last)

numbers = []
6.times do |index|
  puts "==> Enter the #{POSITIONS[index]} number:"
  numbers << gets.chomp.to_i
end

if numbers.first(5).include?(numbers.last)
  puts "The number #{numbers.last} appears in #{numbers.first(5)}."
else
  puts "The number #{numbers.last} does not appears in #{numbers.first(5)}."
end

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

# Algorithm for determining the positioning suffix:
#   Argument: num
#   Return: string, positioning suffix: "'st", "'nd", "'rd", or "'th"
# 
#   if final 2 digits are 11, 12, 13
#     return "'th"
#   otherwise if final digit is 1
#     return "'st"
#   otherwise if final digit is 2
#     return "'nd"
#   otherwise if final digit is 3
#     return "'st"
#   otherwise
#     return "'th"

def positioning_suffix(num)
  case
  when [11, 12, 13].include?(num % 100) then "th"
  when num % 10 == 1                    then "st"
  when num % 10 == 2                    then "nd"
  when num % 10 == 3                    then "rd"
  else                                       "th"
  end
end

numbers = []
5.times do |index|
  puts "==> Enter the #{index + 1}#{positioning_suffix(index + 1)} number:"
  number = ''
  loop do
    number = gets.chomp
    if number == number.to_i.to_s
      number = number.to_i
      break
    end
    puts "Please enter a valid integer:"
  end
  numbers << number
end

puts '=> Enter the last number:'
last_number = ''
loop do
  last_number = gets.chomp
  if last_number == last_number.to_i.to_s
    last_number = last_number.to_i
    break
  end
  puts "Please enter a valid integer:"
end

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appears in #{numbers}."
end

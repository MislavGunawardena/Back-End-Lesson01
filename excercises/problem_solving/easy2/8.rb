# User input:
#   Integer greater than 0. num
#   String that determines whether to display sum or product. Values 's' or 'p'
#   should be entered.
# Display: Either the sum or the product of all integers between 1 and num.
# 
# Algorithm:
#   num <= prompt user input
#   operation <= prompt user input
#   sum = 1 + 2 = .... + num
#   product = 1 * 2 * 3 * .... * num
#   if operation == 's'
#     display sum
#   else
#     display product
#   end

def prompt(str)
  puts ">> #{str}"
end

prompt('Please enter an integer greater than 0:')
num = ''
loop do
  num = gets.chomp
  if num == num.to_i.to_s && num.to_i > 0
    num = num.to_i
    break
  end
  prompt('You have to enter an integer greater than 0:')
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = ''
loop do
  operation = gets.chomp
  break if %w(s p).include?(operation)
  prompt("You have to enter either 's' for sum or 'p' for product.")
end

sum = (1..num).to_a.inject(:+)
product = (1..num).to_a.inject(:*)

if operation == 's'
  puts "The sum of the integers between 1 and #{num} is #{sum}."
else
  puts "The product of the integers between 1 and #{num} is #{product}."
end


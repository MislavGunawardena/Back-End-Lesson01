# User inputs: 2 integers, num1 and num2
# Display: Print the result of the following operations on these 2 numbers:
#           addition, subtraction, product, quotient, remainder, and power.
# 
# Algorithm:
#   Prompt user for num1, num2
#   num1, num2 <= User i/p
# 
#   OPERATIONS = [:+, :-, :*, :/, :%, :**]
# 
#   For each operation in OPERATIONS
#     Display the result

OPERATIONS = [:+, :-, :*, :/, :%, :**]

puts '==> Enter the first number:'
num1 = gets.chomp.to_i
puts '==> Enter the second number:'
num2 = gets.chomp.to_i

OPERATIONS.each do |operation|
  result = [num1, num2].inject(operation)
  puts "==> #{num1} #{operation} #{num2} = #{result}"
end

puts '>> Please enter an integer greater than 0: '
number = nil
loop do
  number = gets.chomp.to_i
  break if number > 0
  puts 'You must enter a positive number'
end

operation = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  break if ['s', 'p'].include?(operation)
  puts "You must enter either 's', or 'p'."
end

if operation == 's'
  result = (1..number).inject(:+)
  operation_name = 'sum'
elsif operation == 'p'
  result = (1..number).inject(:*)
  operation_name = 'product'
end

puts "The #{operation} of the integers between 1 and #{number} is #{result}."

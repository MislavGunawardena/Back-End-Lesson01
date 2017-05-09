puts ">> Please enter an integer greater than 0:"
number = ''
loop do
  number = gets.chomp
  if number.to_i.to_s == number
    number = number.to_i
    break
  end
  puts "You did not enter an integer number, please enter an integer : "
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = ''
loop do
  operation = gets.chomp
  break if ['s', 'p'].include?(operation)
  puts "Please enter either 's' or 'p':"
end

if operation == 's'
  sum = (1..number).inject(&:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}"
elsif operation == 'p'
  product = (1..number).inject(&:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
end
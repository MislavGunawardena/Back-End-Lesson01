puts '>> Please enter an integer greater than 0: '
number = gets.chomp.to_i

sum_or_product = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp
  break if ['s', 'p'].include?(sum_or_product)
  puts "You must enter either 's', or 'p'."
end



result = ((sum_or_product == 's') ? (1..number).inject(:+) : (1..number).inject(:*))
operation = (sum_or_product == 's') ? 'sum' : 'product'

puts "The #{operation} of the integers between 1 and #{number} is #{result}."

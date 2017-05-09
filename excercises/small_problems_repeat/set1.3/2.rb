puts "==> Enter the first number:"
first_number = gets.chomp.to_f

puts "==> Enter the second number:"
second_number = gets.chomp.to_f

operations = [:+, :-, :*, :/, :%, :**]

operations.each do |operation|
  result = first_number.send(operation, second_number).round(3)
  puts "==> #{first_number} #{operation} #{second_number} = #{result}"
end
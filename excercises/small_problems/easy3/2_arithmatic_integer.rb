# The second number being equal to 0 is an edge case.
puts '==> Enter the first number:'
first_number = gets.chomp.to_i
puts '==> Enter the second number:'
second_number = gets.chomp.to_i

numbers = [first_number, second_number]
operations = [:+, :-, :*, :/, :%, :**]

operations.each do |operation|
  unless [:/, :%].include?(operation) && second_number == 0
    puts "==> #{first_number} #{operation} #{second_number}" +
         " = #{numbers.inject(&operation)}"
  else
    puts "#{first_number} cannot be divided by zero"
  end
end
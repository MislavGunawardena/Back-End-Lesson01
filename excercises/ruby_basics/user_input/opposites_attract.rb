
def valid_number(number)
  (number.to_i.to_s == number) && (number.to_i != 0)
end

def input_number
  loop do
    puts 'Enter a non-zero integer number:'
    number = gets.chomp
    return number.to_i if valid_number(number)
    puts 'That is not a valid number.'
  end
end

first_number = nil
second_number = nil
loop do
  first_number = input_number
  second_number = input_number
  break if first_number * second_number < 0
  puts "You have to enter one positive integer and one negative integer."
end

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
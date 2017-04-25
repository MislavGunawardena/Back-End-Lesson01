def position(number)
  if [11, 12, 13].include?(number % 100)
    "#{number}th"
  elsif number % 10 == 1
    "#{number}st"
  elsif number % 10 == 2
    "#{number}nd"
  elsif number % 10 == 3
    "#{number}rd"
  else
    "#{number}th"
  end
end

numbers = []
5.times do |index|
  next_number = nil
  loop do
    puts "Enter the #{position(index + 1)} number:"
    user_input = gets.chomp
    if user_input.to_i.to_s == user_input
      next_number = user_input.to_i
      break
    end
    puts 'That was not a valid integer. Please enter a valid integer.'
  end
  numbers << next_number
end

last_number = nil
loop do
  puts "Enter the last number:"
  user_input = gets.chomp
  if user_input.to_i.to_s == user_input
    last_number = user_input.to_i
    break
  end
  puts 'That was not a valid integer. Please enter a valid integer.'
end

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

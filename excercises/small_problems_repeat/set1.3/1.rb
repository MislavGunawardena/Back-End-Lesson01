def positioning_string(number)
  number = number.to_s
  if ['11', '12', '13'].include?(number[-2..-1])
    "#{number}th"
  elsif number[-1] == '1'
    "#{number}st"
  elsif number[-1] == '2'
    "#{number}nd"
  elsif number[-1] == '3'
    "#{number}rd"
  else
    "#{number}th"
  end
end

numbers = []
count = 0
loop do
  puts "==> Enter the #{positioning_string(count + 1)} number:"
  number = gets.chomp.to_i
  
  numbers << number

  count += 1
  break if count == 5
end

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appears in #{numbers}."
end
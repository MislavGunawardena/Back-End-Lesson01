print 'What is your name? '
name = gets.chomp

unless name[-1] == '!'
  puts "Hello #{name}."
else
  puts "Hello #{name[0..-2]}. Why are we screaming".upcase
end
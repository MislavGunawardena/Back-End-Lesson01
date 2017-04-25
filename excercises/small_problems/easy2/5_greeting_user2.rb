print 'What is your name? '
name = gets.chomp

unless name[-1] == '!'
  puts "Hello #{name}."
else
  puts "Hello #{name.chop}. Why are we screaming?".upcase
end
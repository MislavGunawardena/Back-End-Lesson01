# User input: user_name
# Display: Greet the user
# 
# Algorithm:
#   Ask for user's name
#   user_name = prompt user name
#   If user_name[-1] == '!'
#     yell back
#   else
#     regular greeting

user_name = ''
loop do
  print "What is your name? "
  user_name = gets.chomp
  break unless user_name == ''
end

if user_name[-1] == '!'
  puts "HELLO #{user_name[0..-2].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end

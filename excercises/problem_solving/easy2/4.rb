# User inputs: current_age, retirement_age
# Display: 1) Current year and retirement year.
#          2) Years left to work.
# 
# Algorithm:
#   current_age <= prompt from user
#   retirement_age <= prompt from user
#   current_year <= retrieve from system
#   
#   years_to_work = retirement_age - current_age
#   retirement_year = current_year + years_to_work
# 
#   display current_year and retirement_year
#   display years_to_work

# Validation algorithm:
#   initialize input variable
#   loop:
#     prompt input variable
#     break if input variable is valid
#     display message asking user to re-enter variable value

require 'date'

def valid_age?(string_input)
  string_input == string_input.to_i.to_s && string_input.to_i > 0
end

puts "What is your age? "
current_age = ''
loop do
  current_age = gets.chomp
  if valid_age?(current_age)
    current_age = current_age.to_i
    break
  end
  print "Please enter a valid integer as your age: "
end

puts "At what age would you like to retire? "
retirement_age = ''
loop do
  retirement_age = gets.chomp
  if valid_age?(retirement_age) && retirement_age.to_i >= current_age
    retirement_age = retirement_age.to_i
    break
  end
  print "Please enter a valid integer greater than your current age: "
end

current_year = Date.today.year

years_to_work = retirement_age - current_age
retirement_year = current_year + years_to_work

puts "\nIt's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_work} years of work to go!"


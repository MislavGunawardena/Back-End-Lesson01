print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_work = retirement_age - age

puts "It's #{current_year}. You will retire in #{current_year + years_to_work}."
puts "You have only #{years_to_work} years of work to go!"
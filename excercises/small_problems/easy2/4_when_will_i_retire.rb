print 'What is your age?  ' 
age = gets.chomp.to_i
print 'At what age would you like to retire?  '
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_till_retirement = retirement_age - age
retirement_year = current_year + years_till_retirement

puts "\nIt's 2016. You will retire in #{retirement_year}."
puts "You have only #{years_till_retirement} years of work to go!"
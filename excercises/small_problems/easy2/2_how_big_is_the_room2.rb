SQRMETERS_TO_SQRFEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

area_square_meters = (length * width).round(2)
area_square_feet = (length * width * SQRMETERS_TO_SQRFEET).round(2)

puts "The area of the room is #{area_square_meters}" + 
     " square meters (#{area_square_feet} square feet)."
METERS_TO_FEET = 3.28084

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

area_sqr_meters = length * width
area_sqr_feet = length * width * METERS_TO_FEET * METERS_TO_FEET

puts "The area of the room is #{sprintf("%0.1f", area_sqr_meters)}" + 
     " square meters (#{sprintf("%0.2f", area_sqr_feet)} square feet)."
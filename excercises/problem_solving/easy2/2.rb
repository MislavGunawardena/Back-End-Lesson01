SQR_METER_TO_SQR_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sqr_meters = length * width
area_sqr_feet = SQR_METER_TO_SQR_FEET * area_sqr_meters

puts "The area of the room is #{format("%.1f", area_sqr_meters)} square meters"\
     "(#{format("%.1f",area_sqr_feet)} square feet)."
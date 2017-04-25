SQRFEET_TO_SQRINCHES = 144
SQRFEET_TO_SQRCENTIMETERS = 30.48 * 30.48

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f
puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f

area_square_feet = (length * width).round(2)
area_square_inches = (length * width * SQRFEET_TO_SQRINCHES).round(2)
area_square_centimeters = (length * width * SQRFEET_TO_SQRCENTIMETERS).round(2)

puts "The area of the room is #{area_square_feet} square feet " + 
     "(#{area_square_inches} square inches, #{area_square_centimeters} " +
     "square centimeters.)"
puts "Enter the length of the room in meters: "
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area = (length * width).round(1)
puts "The area of the room is #{area} square meters "\
     "(#{format("%.2f", area * 10.7639)} square feet)."
print 'What is the bill?  '
bill = gets.chomp.to_f
print 'What is the tip precentage?  '
tip_percentage = gets.chomp.to_i

tip = (bill * tip_percentage.to_f / 100).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"
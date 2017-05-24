# User inputs: bill, tip_percentage
# Output: The tip amount, total
# 
# Algorithm:
#   bill = prompt bill and convert to integer
#   tip_percentage = prompt tip_percentage and convert to integer
# 
# tip = bill * tip_percentage / 100.0
# total = bill + tip
# 
# display tip
# display total

print "What is the bill? "
bill = gets.chomp.to_i
print "What is the tip percentage? "
tip_percentage = gets.chomp.to_i

tip = bill * tip_percentage / 100.0
total = bill + tip

puts "\nThe tip is #{format("%.2f", tip)}"
puts "The total is #{format("%.2f", total)}"

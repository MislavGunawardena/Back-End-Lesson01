print "What is the bill? "
bill_amount = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip = (bill_amount * tip_percentage / 100 ).round(2)
puts "The tip is #{tip}"

total = bill_amount + tip
puts "The total is #{total}"
print "Please write word or multiple words: "
string = gets.chomp

characters_no = string.delete(' ').size

puts "There are #{characters_no} characters in \"#{string}\"."
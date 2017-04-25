print 'Please write word or multiple words: '
string = gets.chomp

no_of_characters = string.chars.reject {|character| character == ' '}.size
puts "There are #{no_of_characters} in \"#{string}\"."
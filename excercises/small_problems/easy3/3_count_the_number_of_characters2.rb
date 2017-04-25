print 'Please write word or multiple words: '
string = gets.chomp

no_of_characters = string.delete(' ').size
puts "There are #{no_of_characters} characters in \"#{string}\"."
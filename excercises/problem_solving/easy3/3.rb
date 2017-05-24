# User input: String. A single word or a multi word sentence.
# Display: A message indicating the number of non-blank characters in input.
# 
# Algorithm:
#   Prompt for input
#   sentence = user input
#   compressed_sentence = remove blanks from sentence
#   number_of_characters = size of compressed_sentece
#   Print number_of_characters with message

puts 'Please write word or multiple words:'
sentence = gets.chomp
compressed_sentence = sentence.delete(' ')
number_of_characters = compressed_sentence.size

puts "There are #{number_of_characters} characters in \"#{sentence}\"."
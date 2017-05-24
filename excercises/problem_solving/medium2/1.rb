# User input: None
# Display: Should pring the longest sentence in a file based on the number of 
#          words.
# 
# Algorithm:
#   file = open sample.txt in read only mode
#   text = All the text in file
#   sentences = array of all the sentences in file.
#   longest_sentence = sentence in sentences with the most number of words.
#   print the longest sentence

text = File.read('sample.txt')
sentences = text.split(/[.?!]/)
ending_punctuations = text.scan(/[!.?]/)
sentences.each_with_index do |sentence, index|
  sentence << ending_punctuations[index]
end

longest_sentence = sentences.min_by { |sentence| sentence.split.size }
puts longest_sentence


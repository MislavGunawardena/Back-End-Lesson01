
file1 = File.open('sample2.txt', 'r')
file1_text = file1.read
sentences = file1_text.split(/[\.\?\!]/)

longest_sentence = sentences.max_by { |sentence| sentence.split.size }
longest_sentence = file1_text.match(/#{longest_sentence}[\.\!\?]/).to_s

puts "The longest sentence is:\n\"#{longest_sentence}\""
puts "The size of the longest sentence is: #{longest_sentence.split.size}"\
     " words."
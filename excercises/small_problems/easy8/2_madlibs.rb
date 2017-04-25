VOWELS = %w(a e i o u)

words = { noun: nil, verb: nil, adjective: nil, adverb: nil }
words.each do |key, _|
  print "Enter #{VOWELS.include?(key[0]) ? 'an' : 'a'} #{key}: "
  words[key] = gets.chomp
end

sentence1 = "\nDo you #{words[:verb]} your #{words[:adjective]} "\
            "#{words[:noun]} #{words[:adverb]}? That's hilarious!"
sentence2 = "\nIf the #{words[:noun]} is #{words[:adjective]}, then "\
            "it will be possible to #{words[:verb]} #{words[:adverb]}."
sentence3 = "\nHe wanted to #{words[:verb]} #{words[:adverb]}, so he"\
            " walked with his #{words[:adjective]} #{words[:noun]}."

puts [sentence1, sentence2, sentence3].sample
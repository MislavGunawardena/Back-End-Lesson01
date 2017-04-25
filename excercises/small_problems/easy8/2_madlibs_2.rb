VOWELS = %w(a e i o u) 

words = { noun: nil, verb: nil, adjective: nil, adverb: nil }
words.each do |key, _|
  print "Enter #{VOWELS.include?(key[0]) ? 'an' : 'a'} #{key}: "
  words[key] = gets.chomp
end

sentence1 = format("\nDo you %s your %s %s %s? That's hilarious!",
                   words[:verb],words[:adjective],words[:noun],words[:adverb])

puts sentence1
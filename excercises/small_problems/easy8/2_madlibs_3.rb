VOWELS = %w(a e i o u)

words = { noun: nil, verb: nil, adjective: nil, adverb: nil }
words.each do |key, _|
  print "Enter #{VOWELS.include?(key[0]) ? 'an' : 'a'} #{key}: "
  words[key] = gets.chomp
end

puts "\nDo you #{words[:verb]} your #{words[:adjective]} #{words[:noun]}"\
     "#{words[:adverb]}? That's hilarious!"

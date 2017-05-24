words = { noun: nil, verb: nil, adjective: nil, adverb: nil}
words.keys.each do |word_type|
  puts "Enter #{word_type.to_s.chr.match(/[aeiou]/) ? 'an' : 'a'} #{word_type}:"
  words[word_type] = gets.chomp
end

puts "Do you #{words[:verb]} your #{words[:adjective]} #{words[:noun]}"\
     " #{words[:adverb]}? That's hilarious!"
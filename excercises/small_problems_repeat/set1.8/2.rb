print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's "\
            "hilarious!"
sentence2 = "The color of my #{noun} is #{adjective}, please #{verb} it "\ 
            "#{adverb}."
sentence3 = "I must #{verb} a #{adjective} #{noun} #{adverb}."

puts [sentence1, sentence2, sentence3].sample

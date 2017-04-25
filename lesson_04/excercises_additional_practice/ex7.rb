statement = "The Flintstones Rock"

letter_frequency = {}

statement.each_char do |character|
  if character == ' '
    next
  elsif letter_frequency.keys.include?(character)
    letter_frequency[character] += 1
  else
    letter_frequency[character] = 1
  end
end

puts letter_frequency.to_s

result = {}

alphabet = ('a'..'z').to_a + ('A'..'Z').to_a

alphabet.each do |character|
  if statement.include?(character)
    result[character] = statement.count(character)
  end
end

puts result.to_s
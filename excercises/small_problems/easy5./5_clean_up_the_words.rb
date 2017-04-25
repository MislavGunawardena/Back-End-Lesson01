ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a
def cleanup(str)
  characters = str.chars
  result = ''
  str.each_char do |chr|
    if ALPHABET.include?(chr)
      result << chr
    elsif result[-1] != ' '
      result << ' '
    end
  end
  result
end

puts cleanup("---what's my +*& line?") == ' what s my line '

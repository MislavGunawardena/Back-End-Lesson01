def repeater(str)
  result = ''
  str.each_char { |chr| result << chr * 2 }
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
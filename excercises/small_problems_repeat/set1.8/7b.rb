def repeater(str)
  str.chars.map { |chr| chr * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
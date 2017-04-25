def repeater(string)
  doubled_string = ''
  string.each_char do |chr|
    doubled_string << chr << chr
  end
  
  doubled_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
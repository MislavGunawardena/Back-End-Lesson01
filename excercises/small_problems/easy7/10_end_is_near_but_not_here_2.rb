def middle_word(string)
  words = string.split
  return nil if words.size.even?
  
  words[words.size / 2]
end

p middle_word('This is a good day!') # => "a" 
p middle_word("It's nice today!") # => "nice"
p middle_word('Ruby rocks!') # => nil 
p middle_word(' ') # => nil
p middle_word('') # => nil 
p middle_word('Great!') # => "Great!"
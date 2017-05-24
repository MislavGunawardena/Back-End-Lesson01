def substrings_at_start(str)
  substrings = []
  size = str.size
  1.upto(size) do |index|
    substrings << str.slice(0, index)
  end
  
  substrings
end

def substrings(str)
  substrings = []
  size = str.size
  size.times do |index|
    substrings << substrings_at_start(str[index..-1])
  end
  
  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
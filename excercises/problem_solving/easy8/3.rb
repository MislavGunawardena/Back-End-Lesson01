def substrings_at_start(str)
  substrings = []
  size = str.size
  1.upto(size) do |index|
    substrings << str.slice(0, index)
  end
  
  substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
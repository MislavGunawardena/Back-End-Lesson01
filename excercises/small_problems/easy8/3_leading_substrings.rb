# substrings_at_start method <= string
# => an array of all substrings starting at the first characters. Shorter
# substrings should come first.


# algorithm:
# string <= argument
# leading_substrings = []
# for index is 0 to index is (string.size - 1)
#   place string.slice(0..index) in leading_substrings
# return leading_substrings

def substrings_at_start(string)
  leading_substrings = []
  0.upto(string.size - 1) do |index|
    leading_substrings << string.slice(0..index)
  end
  
  leading_substrings
end


p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
p substrings_at_start('')
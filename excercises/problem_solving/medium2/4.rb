# Method: balanced?
# Argument: string
# Side effects: None
# Return: Boolean. true if paranthesis within string argument are balanced.
#         false otherwise.
# Edge cases:
#   balanced?('') should be true
# 
# Algorithm:
#   string <= argument
#   1) count = 0
#   2) for every character in string: |chr|
#        check if chr is '('. If it is then increment count.
#        check if chr is ')'. If it is then decrement count.
#        return false if count is negative
#   3) if count is 0, return true. Otherwise, return false

def balanced?(string)
  count = 0
  string.each_char do |chr|
    count += 1 if chr == '('
    count -= 1 if chr == ')'
    return false if count.negative?
  end
  
  count.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
# Method: xor?
# Arguments: 2 boolean values, bool1 and bool2
# Side effects: None
# Return: the exclussive OR operation for the arguments.
# 
# Algorithm:
#   bool1, bool2 <= Arguments
#   return: !!bool1 != !!bool2

def xor?(bool1, bool2)
  !!bool1 != !!bool2
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
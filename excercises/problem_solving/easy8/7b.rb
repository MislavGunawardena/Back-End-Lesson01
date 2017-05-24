# Method: repeater
# Argument: string
# Side effect: None
# Return: A string in which every character of the argument string is doubled.
# Edge cases:
#   repeater('') == ''
# 
# Algorithm:
#   string <= argument
#   repeated_string = '' (1)
#   for every character in string: |chr| (2)
#     attach chr to repeated_string twice.
#    repeated_string (3)


def repeater(string)
  repeated_string = ''
  string.each_char do |chr| 
    repeated_string << chr * 2
  end
  
  repeated_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

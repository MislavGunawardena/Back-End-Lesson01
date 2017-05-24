# Method name: sequence
# Arguments: integer greater than 0, num
# Return: An array of integers containing 1, 2, 3, ...., num : sequence
# Side effects: None
# Edge cases:
#   sequence(1)
# 
# Algorithm:
#   i/p: num
#   index = 1
#   sequence = []
#   until index > num:
#     add index to sequence
#     increment index by 1
#   return sequence

def sequence(num)
  index = 1
  sequence = []
  until index > num
    sequence << index
    index += 1
  end
  
  sequence
end

def sequence(num)
  (1..num).to_a
end

p sequence(5)
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

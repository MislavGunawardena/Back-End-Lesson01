# Method: sequence
# Arguments: Two integer numbers, count and start
# Side effects: None
# Return: An array of integers. First element is start. There will be count 
#         elements that are successive multiples of start.
# Edge cases:
#   count = 0
#   start = 0
# 
# Algorithm:
#   count, start <= i/p
#   sequence = []
#   index = 1
#   Do the following count number of times:
#     Push (start * index) to the sequence.  
#     Increment index by 1
#   return sequence

def sequence(count, start)
  sequence = []
  1.upto(count) do |index|
    sequence.push(start * index)
  end
  sequence
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
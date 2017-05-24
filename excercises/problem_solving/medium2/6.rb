# Method: triangle
# Arguments: 3 integers, represent angles
# Side effects: None
# Return: symbol. :right, :acute, :obtuse, or :invalid
#                 :acute : all 3 angles are less than 90
#                 :obtuse if 1 angle is greater than 90
#                 :invalid if all the angles are not >= 0 and sum is not 180
# Edge cases:
#   None
# 
# Algorithm:
#   angle1, angle2, angle3 <= arguments
#   1) angles = [angle1, angle2, angle3]
#   2) if sum of angles is not 180:  :invalid
#   3) if any angle is <= 0  :invalid
#   4) if any angle > 90 :obtuse
#   5) if any angle == 90 :right
#   6) otherwise :acute

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.inject(:+) != 180            then :invalid
  when angles.any? { |angle| angle <= 0 }  then :invalid
  when angles.any? { |angle| angle > 90 }  then :obtuse
  when angles.any? { |angle| angle == 90 } then :right
  else                                          :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid


# Note: In conditional expressions, whenever I write <= or >=, I should be
# careful to make sure that the '=' part is really necessary.

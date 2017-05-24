# Method: triangle
# Argument: 3 numeric values
# Side effects: None
# Return value: A symbol.  :equilateral, :isosceles, :scalene, or :invalid
#               Depending on what a triangle made up of sides whose lengths
#               are given by the 3 numeric arguments would be.
# Edge cases:
#   When the 2 smaller sides are exactly equal to the larger side, the method
#   should return :invalid
#   triangle(10, 7, 3) => :invalid
#   When 1 or more sides is 0 or negative, the method should return invalid.
#   triangle(0, 0, 0) => :invalid
# 
# Algorithm:
#   side1, side2, side3 <= arguments
#   1) sides = [side1, side2, side3]
#   2) If any of the sides is 0: return invalid
#   3) if largest side is larger than or equal to the other 2 combined, return 
#      :invalid
#   4) If all sides are equal retrun :equilateral
#   5) If 2 sides are equal retun :isosceles
#   6) If none of the previous conditions were met, return :scalene

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  case 
  when sides.any? { |side| side == 0 }              then :invalid
  when sides.last >= sides.first(2).inject(:+)      then :invalid
  when sides.last == sides.first                    then :equilateral
  when sides[0] == sides[1] || sides[1] == sides[2] then :isosceles
  else                                                   :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort # sorted in ascending order of size
  case 
  when sides.any? { |side| side <= 0 }          then :invalid
  when sides.last >= sides.first + sides[1]     then :invalid
  when sides.first == sides.last                then :equilateral
  when sides.first == sides[1]                  then :isosceles
  when sides[1] == sides.last                   then :isosceles
  else                                               :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
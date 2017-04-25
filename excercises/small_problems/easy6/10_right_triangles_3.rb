def triangle(number) 
  number.downto(1) { |index| puts ('*' * index).rjust(number) }
end

triangle(5)
triangle(9)
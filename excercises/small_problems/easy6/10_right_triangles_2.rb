def triangle(number)
  number.times { |index| puts ('*' * (index + 1)).rjust(number) }
end

triangle(5)
triangle(9)
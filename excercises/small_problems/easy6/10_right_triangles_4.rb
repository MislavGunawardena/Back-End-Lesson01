def triangle(number)
  number.times { |index| puts ('*' * (index + 1)).ljust(number) }
end

triangle(5)
triangle(9)
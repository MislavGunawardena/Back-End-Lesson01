def triangle(n)
  str = '*' * n
  until str == ''
    puts str.rjust(n)
    str.chop!
  end
end

triangle(5)
triangle(9)
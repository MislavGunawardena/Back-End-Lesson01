def triangle(n)
  str = ''
  until str.size == n
    str << '*'
    puts str.rjust(n)
  end
end

triangle(5)
triangle(9)
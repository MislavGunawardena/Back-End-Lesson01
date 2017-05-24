def triangle(num)
  str = '*'
  loop do
    break if str.size > num
    puts str.rjust(num)
    str << '*'
  end
end

triangle(5)
triangle(9)
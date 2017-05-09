# The upper_or_lower parameter and the left_or_right parameter will together
# determine whether the right angle of the printed triangle will be at the
# upper-left, upper-right, lower-left, or lower-right corner.

def triangle(n, upper_or_lower, left_or_right)
  if upper_or_lower == 'upper'
    str = '*' * n
    target_size = 0
  elsif upper_or_lower == 'lower'
    str = ''
    target_size = n
  end
  
  until str.size == target_size
    str << '*' if upper_or_lower == 'lower'
    puts str.ljust(n) if left_or_right == 'left'
    puts str.rjust(n) if left_or_right == 'right'
    str.chop! if upper_or_lower == 'upper'
  end
end

triangle(4,'upper', 'left')
triangle(4,'lower', 'left')
triangle(4,'lower', 'right')
triangle(4,'upper', 'left')
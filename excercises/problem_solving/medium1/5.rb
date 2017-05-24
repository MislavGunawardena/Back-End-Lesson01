# Method: diamond
# Arguments: integer, odd: n
# Side effects: Print a 4 sided diamond on an n*n grid.
# Return: Not specified, nil seems a reasonable return value.
# Edge cases:
#   diamond(1)
# 
# -----*
# ----***
# ---*****
# --*******
# 
# Algorithm
#   n : argument
#   1) stars = 1
#   2) blanks = (n - 1) / 2
#   3) loop:
#        print blanks * ' ' and stars * '*' 
#        break when number of stars is equal to n.
#        increment stars by 2
#        decement blanks by 1

#   4) loop: 
#        break when number of stars is equal to 1
#        decrement stars by 2
#        increment blanks by 1
#        print blanks * ' ' and stars * '*' 

def diamond(n)
  stars = 1
  blanks = (n - 1) / 2
  loop do
    puts "#{' ' * blanks}#{'*' * stars}"
    break if stars == n
    stars += 2
    blanks -= 1
  end
  loop do
    break if stars == 1
    stars -= 2
    blanks += 1
    puts "#{' ' * blanks}#{'*' * stars}"
  end
end

diamond(5)
diamond(1)
diamond(9)








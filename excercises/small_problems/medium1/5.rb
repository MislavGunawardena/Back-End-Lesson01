# algorithm:
# the largest line is n *'s' n is odd
# there are (n - 1)/2 stars on wither either side of the middle *
# the smallest 'line' is just 1 star
# there are (n-1) / 2 blank spaces to the left of it.
# so the first line is (n-1) / 2 blanks followed by a star
# then for each subsequent line, 1 blank gets deleted from the front, and two 
# blanks are added to the stars at the end.
# We do this until we reach the largest line of stars
# Next, we reverse the process.
# a blank space is added and two stars are removed, and each line is printed.
# We keep doing this until the final line that has 1 star is printed.
# 
# blanks = ' ' * (n - 1) / 2
# stars = '*'
# 
# 
# loop do
#   print blanks + stars
#   break if blanks == ''
#   stars << '**'
#   blanks.splice!(0)
# 
# loop do
#   stars.splice!(0..1)
#   blanks << ' '
#   puts blanks + stars
#   break if stars == '*'
# 

def diamond(n)
  blanks = ' ' * ((n - 1) / 2)
  stars = '*'
  
  loop do
    puts blanks + stars
    break if blanks == ''
    stars << '**'
    blanks.slice!(0)
  end
  
  loop do
    break if stars == '*'
    stars.slice!(0..1)
    blanks << ' '
    puts blanks + stars
  end
  
end

diamond(1)
diamond(3)
diamond(9)






# Method: star
# Argument: integer, n is odd
# Side effect: Print an 8-pointed star on an n*n grid
# Return: None required
# Edge case:
#   None since arguments less than 7 do not have to be considered.
# 
# Algorithm:
#   number <= argument
#   padding_width = 0
#   spacing_width = (number - 3) / 2
#   loop:
#     break if spacing_width == 0
#     padding = ' ' * padding_width
#     spacing = ' ' * spacing_width
#     line = "#{padding}*#{spacing}*#{spacing}*"
#     padding_width += 1
#     spacing_width -= 1
#     print line
# 
# 

def star(number)
  padding_width = 0
  spacing_width = (number - 3) / 2
  loop do
    padding = ' ' * padding_width
    spacing = ' ' * spacing_width
    line = "#{padding}*#{spacing}*#{spacing}*"
    puts line
    break if spacing_width == 0
    
    padding_width += 1
    spacing_width -= 1
  end
  
  puts '*' * number
  
  loop do
    padding = ' ' * padding_width
    spacing = ' ' * spacing_width
    line = "#{padding}*#{spacing}*#{spacing}*"
    puts line
    break if padding_width == 0
    
    padding_width -= 1
    spacing_width += 1
  end
  
end

star(7)
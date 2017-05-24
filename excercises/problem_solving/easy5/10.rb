# Method name: print_in_box
# Arguments: A string 
# Side effect: Print the argument string within a box.  
# 
# Edge cases:
#   print_in_box('')
# 
# Algorithm:
#   str: argument atring
#   size: size of string
#   border_line = '+-' + ('-' * size) + '-+'
#   empty_line = '| ' + ('-' * size) + ' |'
#   text_line = '| ' + str + ' |'
#
#   print border_line
#   print empty_line
#   print text_line
#   print empty line
#   print the border_line

def print_in_box(str)
  size = str.size
  border_line = '+-' + ('-' * size) + '-+'
  empty_line = '| ' + (' ' * size) + ' |'
  text_line = '| ' + str + ' |'
  
  puts border_line
  puts empty_line
  puts text_line
  puts empty_line
  puts border_line
end

print_in_box('How are you?')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')

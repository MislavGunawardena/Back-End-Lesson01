# Message is truncated to fit inside a "standard terminal window" of 80 columns.
def print_in_box(string) 
  string.slice!(76..-1)
  horizontal_border = "+-#{'-' * string.size}-+"
  empty_line = "| #{' ' * string.size} |"

  puts horizontal_border
  puts empty_line
  puts "| #{string} |"
  puts empty_line
  puts horizontal_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('0123456789' * 27)
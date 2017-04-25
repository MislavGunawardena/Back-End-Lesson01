def print_in_box(string)
  horizontal_border = '+-'
  string.length.times { |_| horizontal_border << '-' }
  horizontal_border << '-+'
  
  vertical_border = "| "
  string.length.times { |_| vertical_border << ' ' }
  vertical_border << " |"
  
  puts horizontal_border
  puts vertical_border
  puts "| #{string} |"
  puts vertical_border
  puts horizontal_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
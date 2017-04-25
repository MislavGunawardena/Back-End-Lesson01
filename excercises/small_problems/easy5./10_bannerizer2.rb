def print_in_box(string)
  horizontal_border = "+-#{string.chars.map {|_| '-' }.join}-+"
  vertical_border = "| #{string.chars.map {|_| ' ' }.join} |"

  puts horizontal_border
  puts vertical_border
  puts "| #{string} |"
  puts vertical_border
  puts horizontal_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
CHARACTERS_PER_LINE = 76

def sub_strings(str, size)
  sub_strings = [] 
  while str != ''
    sub_strings << str.slice!(0, size)
  end
  sub_strings
end

def print_in_box(string)
  sub_strings = sub_strings(string, CHARACTERS_PER_LINE)
  if sub_strings.size > 1 
    while sub_strings[-1].size < CHARACTERS_PER_LINE
      sub_strings[-1] << ' ' # size of the last line is equalized.
    end
  end
  sub_strings << '  ' if sub_strings.empty? # for the special case in which string argument is ''
  
  largest_string = sub_strings.max_by { |str| str.size }
  
  horizontal_border = "+-#{'-' * largest_string.size}-+"
  empty_line = "| #{' ' * largest_string.size} |"

  puts horizontal_border
  puts empty_line
  sub_strings.each { |sub_string| puts "| #{sub_string} |" }
  puts empty_line
  puts horizontal_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('0123456789' * 27)
CHARACTERS_PER_LINE = 76

def print_in_box(string)
  words = string.split
  max_line_width = string.size if string.size < CHARACTERS_PER_LINE
  max_line_width = CHARACTERS_PER_LINE if string.size >= CHARACTERS_PER_LINE
  
  horizontal_border = "+-#{'-' * max_line_width}-+"
  empty_line = "| #{' ' * max_line_width} |"

  puts horizontal_border
  puts empty_line
  
  number_of_words = words.size
  current_line_width = 0
  words.each_with_index do |word, index|
    print '| ' if index == 0
    
    if current_line_width + word.size + 1 > max_line_width
      puts(' ' * (max_line_width - current_line_width) + ' |')
      print '| '
      current_line_width = 0
    end
    
    print "#{word} "
    current_line_width += word.size + 1
    
    if index == number_of_words - 1
      puts "#{' ' * (max_line_width - current_line_width)} |"
    end
  end

  puts empty_line
  puts horizontal_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('This program was modified to resolve an issue that was pointed out to me by a fellow stuent.
              In the solution that I originall submitted, lines were sometimes broken up within words, not
              at the end of the last word of a line, as should be the case in the word wrap process. As can
              be seen, that issue has been eliminated. When this message is printed out, none of the lines
              end midway through the last word. The program that I first submitted can still be viewed right 
              below.')
print_in_box('0123 456 78 9' * 27)
CHARACTERS_PER_LINE = 76

def equal_size_strings(arr)
  largest_string = arr.max_by { |str| str.size }
  arr.map { |str| str.ljust(largest_string.size) }
end

def sub_strings(str, maximum_size)
  words = str.split
  sub_strings = []
  until words.empty?
    line = ''
    loop do
      break if words.empty?
      break if "#{line} #{words[0]}".size > maximum_size
      line << " #{words.shift}" unless line.empty?
      line << "#{words.shift}" if line.empty?
    end
    sub_strings << line
  end
  
  sub_strings
end

def print_in_box(string)
  sub_strings = sub_strings(string, CHARACTERS_PER_LINE)
  lines = equal_size_strings(sub_strings)

  lines << '  ' if lines.empty? # for the special case in which string argument is ''
  
  length = lines[0].size
  
  horizontal_border = "+-#{'-' * length}-+"
  empty_line = "| #{' ' * length} |"

  puts horizontal_border
  puts empty_line
  lines.each { |sub_string| puts "| #{sub_string} |" }
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
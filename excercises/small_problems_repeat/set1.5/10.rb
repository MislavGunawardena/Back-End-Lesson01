require 'pry'

def divide_to_lines(str, size)
  lines = []
  words = str.split
  line = ''
  
  words.each do |word|
    if line == ''
      line << word
    elsif (line + ' ' + word).size <= size
      line << ' ' + word
    else
      lines << line
      line = word
    end
  end
  
  lines << line
end

def equalize_substrings(arr)
  largest_substring = arr.max_by { |sub_str| sub_str.size }.size
  arr.map do |sub_str|
    until sub_str.size == largest_substring
      sub_str << ' '
    end
    
    sub_str
  end
end

def print_in_box(message)
  sub_strings = divide_to_lines(message, 76)
  sub_strings = equalize_substrings(sub_strings)
  length = sub_strings.max_by { |sub_string| sub_string.size }.size
  
  horizontal_border = "+-#{'-' * length}-+"
  empty_line = "| #{' ' * length} |"
  
  puts horizontal_border
  puts empty_line
  sub_strings.each do |sub_string|
    puts "| #{sub_string} |"
  end
  puts empty_line
  puts horizontal_border
end

print_in_box('To boldly go where no one has gone before.....'\
            'To boldly go where no one has gone before.'\
            'To boldly go where no one has gone before.')
            
print_in_box('To boldly go to where no one has gone before.....'\
            'To boldly go where no one has gone before.'\
            'To boldly go where no one has gone before.')
            
print_in_box('To boldly go where no one has gone before.....'\
             '123 4567 3 4'\
             'To boldly go where no one has gone before.'\
             '123 4567 3'\
             'To boldly go where no one has gone before.'\
             'To boldly go where no one has gone before.'\
             '123 4567 3'\
             'To boldly go where no one has gone before.')
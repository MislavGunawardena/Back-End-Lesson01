# Method name: print_in_box
# Arguments: A string 
# Side effect: Print the argument string within a box.  
# 
# Edge cases:
#   print_in_box('')
# 
# Algorithm:
#   str: argument atring
#   sub_strings: Array of substrings with maximum widths of 76. Each substring
#   should end with a complete word.
#   sub_string = substrings(str, 76) : Algoritm for the substrings method
#   should be defined.
# 
#   size = size of the largest element of sub_strings
#
#   border_line = '+-' + ('-' * size) + '-+'
#   empty_line = '| ' + ('-' * size) + ' |'
#
#   print border_line
#   print empty_line
#   for each element of sub_string:
#     print '| ' + substring(adjusted to size) + ' |'
#   print empty line
#   print border_line

def print_in_box(str)
  sub_strings = sub_strings(str, 76)
  largest_sub_string = sub_strings.max_by { |str| str.size } # A bug caused by the fact
                                                             # That an array may be 
                                                             # empty.
  size = largest_sub_string ? largest_sub_string.size : 0
  
  border_line = '+-' + ('-' * size) + '-+'
  empty_line = '| ' + (' ' * size) + ' |'
  
  puts border_line
  puts empty_line
  sub_strings.each do |str|
    puts '| ' + str.ljust(size) + ' |'
  end
  puts empty_line
  puts border_line
end

#   algoritm for sub_strings:
#     str: argument string
#     words = str.split 
#     sub_strings = []
#     line = ''
#     do until words is empty: 
#       word = words.shift
#       if line.size + 1 + word.size <= max_size
#         add (' ' + word) to line 
#       else
#         add line to sub_strings
#         line = word
#     return sub_strings  


def sub_strings(str, max_size)
  words = str.split
  return [] if words.empty?
  
  sub_strings = []
  line = words.shift
  until words == []
    word = words.shift
    if line.size + 1 + word.size <= max_size
      line << " #{word}"
    else
      sub_strings << line
      line = word
    end
    sub_strings << line if words.empty?
  end
  
  sub_strings
end



print_in_box(
  "Today is a very good day. I hope, it doesn't rain, because I and my brother"\
  " are planning to go out to the park."
)

print_in_box('')
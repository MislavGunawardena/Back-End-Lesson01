# If the capitalize! method does not make any changes to the object it is
# called on, then it returns nil. Have to keep this in mind always. This
# is also true for many other mutating methods. So I should be careful when
# I am making use of the return value of a mutating method.

# I think it is clear how much better it is to systematically and line by line
# examine the code when trying to discover a bug using pry. It is tempting to
# just look at the code with a birds eye view and sift through lines while 
# doing that in the hopes of finding the bug quickly. However, I've had much
# better results whenever I've taken the systematic, line by line, pry aided
# approach.

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
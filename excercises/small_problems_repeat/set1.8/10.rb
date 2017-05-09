# It's important to keep a pen and a paper, or notebook, close by, specially
# for problems like these where a minor mathematical understanding has to be
# developed. Without these, and without using them!, it is easy to get into
# a hack-and-slash approach that is frowned upon.

def center_of(str)
  if str.size.odd?
    mid_index = (str.size - 1) / 2
  elsif str.size.even?
    mid_index = (str.size - 2) / 2
  end
  
  str.size.odd? ? str[mid_index] : str[mid_index, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
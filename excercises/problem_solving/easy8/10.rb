# 1.2.3............n
# if n is even, then n/2 and n/2 + 1 are the middle characters
# Their indexes are n/2 - 1 and n/2
# 
# If n is off, n/2 + 1 is the middle character
# It's index is n/2

def center_of(str)
  size = str.size
  if size.even?
    str[(size / 2 - 1), 2]
  else
    str[size / 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
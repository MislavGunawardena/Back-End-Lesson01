# triangle method <= n positive integer
# displays a right triangle whose sides have n stars

# algorithm:
# Do the following for m = 1 to n
#   print (n-m) spaces
#   print m stars
#   print a line break

def triangle(number)
  number.times do |index|
    (number - index - 1).times { |_| print ' ' }
    (index + 1).times { |_| print '*' }
    print "\n"
  end
end

triangle(5)
triangle(9)
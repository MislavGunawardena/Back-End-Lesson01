#shows that loop do...end follows the usual block scoping rules for local variables. loop is an instance method of Kernel. It is not
#a keyword like while.5 

string1 = "."
loop do
  counter ||= 0
  counter += 1
  string1 = '***'
  string2 = '%%%'
  break
end

puts string1
puts string2 #causes an errir
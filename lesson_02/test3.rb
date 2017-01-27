
number = 1
while number < 10
  string1 = "***"
  number += 1
end
puts string1

arr = [1,2,3]
arr.each {|element| string2 = '%%%'}
puts string2 #This gives an error, unlike 'puts string1'. Shows that a while loop is not a 'block' in the proper sense.
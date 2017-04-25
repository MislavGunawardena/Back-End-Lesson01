# In these types of problems, I should be extra cautious in remembering that index starts with 0.
# Therefore, I it is (index + 1) that has to be checked for divisibility.
# Also, whenever inject is being used, we have to wonder what happens if is is called on an empty array.
# Then, inject will return nil. We have to be mindful of the need to handle those situations. 
# Here, the to_i method is called as a way of handling such a situation.
def multisum(number)
  multiples = []
  number.times do |index|
    multiples << (index + 1) if (index + 1) % 3 == 0 || (index + 1) % 5 == 0
  end
  multiples.inject(:+).to_i
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
puts multisum(2) == 0
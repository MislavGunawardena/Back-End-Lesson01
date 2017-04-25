
arr = [1, 5, 4, 8, 9, 10]

value = arr.bsearch { |num| 1 - num / 3 }
puts value.class
puts value
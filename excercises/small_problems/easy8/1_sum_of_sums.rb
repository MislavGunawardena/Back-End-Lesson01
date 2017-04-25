# sum_of_sums <= array of numbers
# returns : sum of : the sums of each leading sequence
# assume that the array contains at least one number.

# algorithm:
# argument : array
# sums = []
# for each element, index in array
#   find the sum of all elements upto that point sum_upto(index)
#   store that value in sums
# return the sums of all the values in sum. use sum_upto()

# sum_upto(i):
# sum = 0
# for n = 0.....i
#   sum += value at n
# return sum
def sum_of_sums(array)
  sums = []
  array.each_with_index do |element, index|
    sums << array.slice(0..index).inject(&:+)
  end
  
  sums.inject(&:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
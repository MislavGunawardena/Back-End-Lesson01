# multiply_all_pairs <= two arrays, each have a list of integers
# returns an array containing the product of each and every pair of number 
# that can be formed between the 2 numbers
# the result should be stored by increasing value.

def multiply_all_pairs(array1, array2)
  pairs = []
  array1.each do |element1|
    array2.each do |element2|
      pairs << [element1, element2]
    end
  end
  
  pairs.map { |(element1, element2)| element1 * element2 }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
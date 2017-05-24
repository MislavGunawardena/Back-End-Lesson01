# Method: transpose
# Argument: A 2 dimensional array representing an M*N matrix: matrix
# Side effects: None
# Edge cases:
#   when M = 1 transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
#   when N = 1 transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
#   when M = 1 and N = 1: transpose([[1]]) == [[1]]
# 
# Algorithm:
#   matrix has M rows and N columns
#   The result should have N rows and M columns
#   rows and columns should be transposed
#   transposed_matrix = []
#   for all columns in matrix
#     go through all elements in a column....add them into an array and
#     place that array as a row into transposed_matrix
# 

def transpose(matrix)
  rows_number = matrix.size
  columns_number = matrix[0].size
  
  transposed_matrix = []
  columns_number.times do |column|
    new_row = []
    rows_number.times do |row|
      new_row << matrix[row][column]
    end
    transposed_matrix << new_row
  end
  
  transposed_matrix
end

p transpose([[1, 2], [4, 3], [3, 7]])
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
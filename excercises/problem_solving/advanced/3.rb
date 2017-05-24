# Method: transpose
# Argument: A 2 dimensional array representing a 3*3 matrix
# Side effects: None
# Return: A new array representing the transpose of the argument matrix
# Side effects:
#   None, since the problem specifies that argument represents a 3*3 matrix
# 
# Algorithm:
#   matrix <= argument
#   size = size of matrix
#   columns = []
#   for each column_no from 0 to size - 1
#     column = []
#     for each row_no from 0 to size - 1
#         column << matrix[row_no, column_no]
#     columns << column
#   return columns

def transpose(matrix)
  size = matrix.size
  columns = []
  size.times do |column_number|
    column = []
    size.times do |row_number|
      column << matrix[row_number][column_number]
    end
    columns << column
  end
  columns
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# Method: rotate90
# Argument: A 2 dimensional array representing an M * N matrix
# Side effects: None
# Return: None
# Edge cases:
#   rotate90([[]]) == []
#   rotate90([[1, 2, 3, 4]]) == [[4], [3], [2], [1]]
#   rotate90([1],[2],[3],[4]) == [[4, 3, 2, 1]
# 
# Algorithm:
#   matrix <= argument
#   There are M rows and N columns in matrix
#   rotated_matrix = []
#   Go through each column:
#     add each element starting at bottom into an array. 
#     Then place that array as a 'row' into rotated_matrix
#   Return rotated matrix

def rotate90(matrix)
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  rotated_matrix = []
  
  number_of_columns.times do |column_number|
    new_row = []
    (number_of_rows - 1).downto(0) do |row_number|
      new_row << matrix[row_number][column_number]
    end
    rotated_matrix << new_row 
  end
  
  rotated_matrix
end

p rotate90([[2, 3],[4, 5],[6, 7]]) == [[6, 4, 2],[7, 5, 3]]

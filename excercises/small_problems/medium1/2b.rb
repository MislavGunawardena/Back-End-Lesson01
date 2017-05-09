def rotate_array(arr)
  return arr if arr.size <= 1
  
  rotated_array = arr[1..-1]
  rotated_array.push(arr[0])
end

def rotate_rightmost_digits(num1, num2)
  all_digits = num1.to_s.chars
  all_digits[-num2..-1] = rotate_array(all_digits[-num2..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
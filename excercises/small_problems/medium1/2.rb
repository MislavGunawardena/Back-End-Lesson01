def rotate_array(arr)
  return arr if arr.size <= 1
  
  rotated_array = arr[1..-1]
  rotated_array.push(arr[0])
end

def rotate_rightmost_digits(num1, num2)
  digits_left_in_place = num1.to_s.chars.first(num1.to_s.size - num2)
  digits_to_rotate = num1.to_s.chars.last(num2)
  rotated_digits = rotate_array(digits_to_rotate)
  (digits_left_in_place + rotated_digits).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
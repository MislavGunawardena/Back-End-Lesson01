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

def max_rotation(num)
  result = num
  
  num.to_s.size.downto(1) do |index|
    result = rotate_rightmost_digits(result, index)
  end
  
  result
end


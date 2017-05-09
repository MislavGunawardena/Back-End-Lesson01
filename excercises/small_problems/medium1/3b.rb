def max_rotate_array(arr)
  result = []
  arr.size.times do |index|
    arr = arr.push(arr.shift)
    result << arr.shift
  end
  result
end

def max_rotation(num)
  digits = num.to_s.chars
  max_rotate_array(digits).join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
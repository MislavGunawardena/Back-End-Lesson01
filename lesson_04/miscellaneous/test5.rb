
hsh = {reds: 0, blues: 0}

arr = [12, 34, 56, 77, 33]

ret_obj =
arr.each_with_object(hsh) do |item, hash|
  hash[:reds] += item if item.odd?
  hash[:blues] += item if item.even?
end

puts ret_obj.to_s

ret_obj2 =
hsh.each_with_object([]) do |(key, value), array|
  array << key unless array.include?(key)
  array << value
end

puts ret_obj2.to_s
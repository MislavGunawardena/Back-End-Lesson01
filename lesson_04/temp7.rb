arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = arr.each_with_object({}) do |inner_array, hsh|
         hsh[inner_array[0]] = inner_array[1]
       end
puts hash
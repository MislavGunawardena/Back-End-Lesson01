arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr_new = arr.map do |inner_arr|
            inner_arr.select {|num| num % 3 == 0 }
          end
puts arr_new.to_s
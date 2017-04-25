arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr_new = arr.sort_by do |inner_arr|
            inner_arr.select { |num| num.odd? }
          end
puts arr_new.to_s
arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr_new = arr.map do |inner_hash|
            inner_hash.map { |key, value| [key, value + 1] }.to_h
          end
puts arr_new.to_s
arr = [1, 99, 23, 52, 33, 71, 9, 88]

arr2 =  arr.minmax do |a, b|
          if (50 - a).abs < (50 - b).abs
            -1
          elsif (50 - a).abs == (50 - b).abs
            0
          elsif (50 - a).abs > (50 - b).abs
            1
          end
        end
        
arr3 = arr.minmax do |a, b|
         (50 - a).abs <=> (50 - b).abs
       end
        
puts arr3.to_s
numbers = [[[1, 2], [3, 4]], [5, 6]]

incremented_numbers =
  numbers.map do |inner_array|
    inner_array.map do |element|
      if element.is_a?(Array)
        element.map do |number|
          number + 1
        end
      else
        element + 1
      end
    end
  end
  
puts incremented_numbers.to_s

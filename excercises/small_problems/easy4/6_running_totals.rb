def running_total(array)
  running_totals = []
  0.upto(array.size - 1) do |index|
    total = 0
    0.upto(index) do |inner_index|
      total += array[inner_index]
    end
    running_totals[index] = total
  end
  
  running_totals
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
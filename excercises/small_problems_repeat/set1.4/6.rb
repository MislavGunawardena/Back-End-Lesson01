# def running_total(array)
#   sum = 0
#   array.each_with_object([]) do |item, totals|
#     sum += item
#     totals << sum
#   end
# end

def running_total(array)
  sum = 0
  array.map { |item| sum += item }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
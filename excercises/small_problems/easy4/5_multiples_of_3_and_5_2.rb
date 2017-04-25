def multisum(number) 
  sum = 0
  1.upto(number) do |index|
    sum += index if index % 3 == 0 || index % 5 == 0
  end
  sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
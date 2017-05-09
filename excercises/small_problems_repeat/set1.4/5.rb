def div_by?(num1, num2)
  num1 % num2 == 0
end

def multisum(num)
  sum = 0
  (1..num).each do |index| 
    sum += index if div_by?(index, 3) || div_by?(index, 5)
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
def multisum(num)
  (1..num).to_a.inject(0) do |sum, number|
    if number % 3 == 0 || number % 5 == 0
      sum += number
    else
      sum
    end
  end
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
arr = [1, 99, 23, 52, 33, 71, 9, 88]


num1 = arr.min do |a, b|
         if b < a
           -1
         elsif b == a
           0
         elsif b > a
           1
         end
       end
puts num1

num2 = arr.min do |a, b|
         b <=> a
       end
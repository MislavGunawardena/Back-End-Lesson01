# def fibonacci(n)
#   return 1 if n <= 2
#   next_to_last, last = 1, 1
#   3.upto(n) do |index|
#     next_to_last, last = last, (next_to_last + last)
#   end

#   last
# end

# 0.upto(15) do |index|
#   p fibonacci((index * 10) + 1)
# end

ENDING_DIGITS = {
  0 => [5, 5, 0, 5, 5, 0],
  1 => [1, 9, 6, 9, 1, 4],
  2 => [1, 4, 1, 9, 6, 1],
  3 => [2, 3, 7, 8, 7, 3],
  4 => [2, 3, 7, 8, 7, 3],
  5 => [5, 0, 5, 5, 0, 5],
  6 => [8, 7, 3, 2, 3, 7],
  7 => [3, 7, 8, 7, 3, 2],
  8 => [1, 4, 1, 9, 6, 9],
  9 => [4, 1, 9, 6, 9, 1]
}

def fibonacci_last(n)
  ENDING_DIGITS[n % 10][(n / 10) % 6 - 1]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)

# last lumber 1 => [1, 9, 6, 9, 1, 4]
# last number 2 => [1, 4, 1, 9, 6, 1]
# last number 3 => [2, 3, 7, 8, 7, 3]
# last number 4 => [2, 3, 7, 8, 7, 3]
# last number 5 => [5, 0, 5, 5, 0, 5]
# last number 6 => [8, 7, 3, 2, 3, 7]
# last number 7 => [3, 7, 8, 7, 3, 2]
# last number 8 => [1, 4, 1, 9, 6, 9]
# last number 9 => [4, 1, 9, 6, 9, 1]
# last number 0 => [5, 5, 0, 5, 5, 0] note: from 10 onward.
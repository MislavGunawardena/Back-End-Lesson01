# Write a method that will take an array of numbers as an argument and return
# an array that only contains the prime numbers found withint the argument.
# select_primes([1, 2, 3, 4]) == [2, 3]
# select_primes([4, 6, 8]) == []

# Method: select_primes
# Argument: array of numbers: numbers
# Side effects: None
# Return: An array consisting of all the primes contained in the input argument
#         array.
# Edge cases:
#   select_primes([4, 6, 8]) == []
#   select_primes([]) == []
# 
# Algorithm:
#   numbers <= argument
#   1) primes = []
#   2) Iterate through all elements of numbers: |num|
#        Check whether num is prime. If it is, then place it in the primes
#        array.
#   3) Return primes

def prime?(number)
  return false if number == 1
  2.upto(number - 1) do |index|
    return false if number % index == 0
  end
  true
end

def select_primes(numbers)
  numbers.select { |num| prime?(num) }
end

def count_primes(numbers)
  select_primes(numbers).size
end

p select_primes([1, 2, 3, 4])
p select_primes([4, 6, 8])
p select_primes([])

p count_primes([1, 2, 3, 4])
p count_primes([4, 6, 8])
p count_primes([])

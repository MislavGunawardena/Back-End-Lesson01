#Write a method that takes two numbers. It should print out all the prime 
#numbers between these two numbers.

# algorithm:
# n, m <= arguments, integer
# larger_number = larger of n, m
# smaller_number = smaller of n, m
# primes = []
# for each integer i between smaller_number and larger_number:
#   is_prime = true
#   for each number j between 2 and i
#     if i is divisible by j:
#       is_prime = false
#       break
#   add i to prime_numbers if is_prime is still true
# print out all the numbers in primes

def primes(n, m)
  larger_number = [n, m].max
  smaller_number = [n,m].min
  primes = []
  
  (smaller_number..larger_number).each do |index|
   is_prime = true
   (2..(index-1)).each do |inner_index|
     if index % inner_index == 0
       is_prime = false
       break
     end
   end
   primes << index if is_prime
  end
  
  puts primes.join(', ')
end

primes(2,25)


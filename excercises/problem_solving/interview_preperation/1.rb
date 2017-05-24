# Method: prime?
# Argument: integer, number
# Side effects: None
# Return value: Boolean. true if argument is prime, false otherwise.
# Edge cases:
#   prime?(1)
#   prime?(2)
# 
# Algorithm:
#   number <= argument
#   1) is_prime = true
#   2) for all integers between 2 and (number - 1): |index|
#        check whether number is divisible by index
#        if it is, then:
#          is_prime = false
#          break out of the iteration
#   3) return is_prime

def prime?(number)
  return false if number == 1
  2.upto(number - 1) do |index|
    return false if number % index == 0
  end
  true
end

p prime?(1)
p prime?(2)
p prime?(3)
p prime?(4)

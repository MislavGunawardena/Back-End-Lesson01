#Change the loop to a while loop and change the looping condition to divident > 0:
#The purpose of 'number % dividend == 0' is to determine if number is divisible by dividend.
#The purpose of the second to last line is to ensure that the factors method returns an array that contains all the
#divisors of nuber.
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(10).inspect
puts factors(0).inspect
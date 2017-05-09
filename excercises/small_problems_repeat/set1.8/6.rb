def divisible_by(num, divisor)
  num % divisor == 0
end


def fizzbuzz(starting_number, ending_number)
  starting_number.upto(ending_number) do |num|
    if divisible_by(num, 3) && divisible_by(num, 5)
      print 'FizzBuzz'
    elsif divisible_by(num, 3)
      print 'Fizz'
    elsif divisible_by(num, 5)
      print 'Buzz'
    else
      print num
    end
    print ', ' unless num == ending_number
  end
  print "\n"
end

fizzbuzz(1, 15)
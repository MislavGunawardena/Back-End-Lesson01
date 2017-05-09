def fizzbuzz_string(num)
  if    num % 3 == 0 && num % 5 == 0 then 'FizzBuzz'
  elsif num % 3 == 0                 then 'Fizz'
  elsif num % 5 == 0                 then 'Buzz'
  else                                     num.to_s
  end
end

def fizzbuzz(starting_number, ending_number)
  starting_number.upto(ending_number) do |num|
    print fizzbuzz_string(num)
    print ', ' unless num == ending_number
  end
  print "\n"
end

fizzbuzz(1, 15)
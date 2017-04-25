def fizzbuzz_value(number)
  case
  when (number % 5 == 0) && (number % 3 == 0)
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

def fizzbuzz(starting_number, ending_number)
  displayed_content = []
  starting_number.upto(ending_number) do |index|
    displayed_content << fizzbuzz_value(index)
  end
  
  puts displayed_content.join(', ')
end

fizzbuzz(1,15)

#fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

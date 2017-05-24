def fizbuzz_value(num)
  case
  when num % 3 == 0 && num % 5 == 0 then 'FizzBuzz'
  when num % 3 == 0                 then 'Fizz'
  when num % 5 == 0                 then 'Buzz'
  else                                   "#{num}"
  end
end


def fizzbuzz(num1, num2)
  fizzbuzz_array = []
  num1.upto(num2) do |index|
    fizzbuzz_array << fizbuzz_value(index)
  end
  
  puts fizzbuzz_array.join(', ')
end

fizzbuzz(1, 15)
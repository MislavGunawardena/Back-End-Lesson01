# *** SHOVEL OPERATOR << *** 

# *** RUN THE CODE OFTEN !!! ***

def fizzbuzz(number1, number2)
  output_string = ''
  number1.upto(number2) do |index|
    if (index % 3 == 0) && (index % 5 == 0)
      output_string << ' "FizzBuzz",'
    elsif (index % 3 == 0)
      output_string << ' "Fizz",'
    elsif (index % 5 == 0)
      output_string << ' "Buzz",'
    else
      output_string << " #{index},"
    end
  end
  output_string.slice!(-1)
  puts output_string
end

fizzbuzz(1, 15)
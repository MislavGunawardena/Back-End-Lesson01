def fizzbuzz(starting_number, ending_number)
  displayed_content = []
  starting_number.upto(ending_number) do |index|
    if (index % 5 == 0) && (index % 3 == 0)
      displayed_content << 'FizzBuzz'
    elsif index % 5 == 0
      displayed_content << 'Buzz'
    elsif index % 3 == 0
      displayed_content << 'Fizz'
    else
      displayed_content << index
    end
  end
  
  puts displayed_content.join(', ')
end

fizzbuzz(1,15)

#fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

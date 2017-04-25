
def repeat(message, number)
  # validating inputs.
  unless message.class == String && number.class == Fixnum
    raise ArgumentError, "Expecting a string and a positive integer as arguments."
  end
  raise ArgumentError, "Expecting a positive integer argument." if number < 0
  
  number.times { |_| puts message }
end

repeat('Hello', 3)
repeat('Is everything ok?', 5)
puts '|'
repeat('Hello', 0)
puts'|'
repeat('', 3)
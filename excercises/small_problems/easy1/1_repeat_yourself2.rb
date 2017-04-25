
def repeat(message, number)
  number = number.to_s
  number.times { |_| puts message }
end

repeat('Hello', 3)
repeat('Is everything ok?', 5)
puts '|'
repeat('Hello', 0)
puts'|'
repeat('', 3)
repeat(5, "3")
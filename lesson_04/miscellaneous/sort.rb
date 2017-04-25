
numbers = [1,9,3,6,5]

numbers.sort! do |first, second|
  second <=> first
end

puts numbers.inspect

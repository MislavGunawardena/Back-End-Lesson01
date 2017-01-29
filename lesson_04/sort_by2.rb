
numbers = [%w(92 45 78), %w(34 56 67), %w(7 23 12)]

numbers_character_sorted = numbers.sort
puts numbers_character_sorted.to_s
puts '-----'

sorted_numerically =
  numbers.sort_by do |inner_number_array|
    inner_number_array.map do |number|
      number.to_i
    end
  end
  
puts sorted_numerically.to_s
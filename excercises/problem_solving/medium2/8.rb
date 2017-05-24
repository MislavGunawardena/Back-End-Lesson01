# Method: featured
# Argument: integer, greater than or equal to zero
# Side effect: Maybe:....The program should print an error message if there
#              is no next 'featured number'
# Return: integer, The next 'featured number' that is larger than argument. 
#         A featured number is:
#           odd
#           divisible by 7
#           each digit occures exactly once
#         nil is there is no featured number higher than argument.
# Edge cases:
#   higest possible unique digit number: 9_876_543_210
#   featured(9_876_543_210) => preint error message
#   featured(0)
# 
# Algorithm:
#   number <- argument
#   1) LIMIT = 9_876_543_210
#   2) index = find the next highest number after argument divisible by seven 
#              and odd
#   3) loop:
#        if all_digits_uniq?(index)
#          return index
#        index += 14
#        break if index > LIMIT
#   4) print error message
#   5) return nil
# 
# Algorithm for all_digits_uniq
#   number <= argument
#   1) digits = number.to_s.chars
#   2) return: digits == digits.uniq

LIMIT = 9_876_543_210

def all_digits_uniq?(number)
  digits = number.to_s.chars
  digits == digits.uniq
end

def featured(number)
  index = number + 1
  index += 1 until index.odd? && index % 7 == 0
  loop do
    return index if all_digits_uniq?(index)
    index += 14
    break if index > LIMIT
  end
  puts "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those 
                        #    requirements


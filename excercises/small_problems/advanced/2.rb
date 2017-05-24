# Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

require 'pry'
def stringy(num)
  chr = '1'
  str = ''
  num.times do |index|
    #binding.pry
    str << chr
    if chr == '1'
      chr = '0'
    elsif chr == '0'
      chr = '1'
    end
  end
  
  str
end

p stringy(5)


# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
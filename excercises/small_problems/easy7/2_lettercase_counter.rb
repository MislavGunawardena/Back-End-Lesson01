# letter_case_count method <= a string
# letter_case_count => hash with 3 key-value pairs: number of characters that are
# lowercase letters, number of characters that are uppercase letters, number of 
# characters that are neither.

# algorithm:
# param <= string
# string.chars
# letter_case_count = {lowercase: 0, uppercase: 0, neither: 0}
# string.chars.each
# For each characters in string:
#   Increment letter_case_count[:lowercase] by 1 if it is a lower case letter.
#   chr.upcase != chr => means chr is lowercase
#   Increment letter_case_count[:uppercase] by 1 if it is a upper case letter.
#   chr.downcase != chr => means chr is uppercase
#   Increment letter_case_count[:neither] by 1 if it isn't a letter.
#   chr.upcase == chr and chr.downcase == chr means chr is not a letter
  
# return letter_case_count

# Line **: The letter_case_count variable is initialised to a hash that contains
# 3 key-value pairs. The 3 keys are the symbols :lowercase, :uppercase, and
# :neither. Their values are all 0.

# Line **: The chars method is called on the string variable. This returns an
# array whose elements are each of the characters contained in string. The
# each method is called on this array. It's block spans from line 23 to line 31.
# This block has 1 block parameter called chr. It is called once for each 
# character of the calling array. The chr parameter will take up the value of 
# each of these characters successively, each time the block is called.
# There is an if-elsif-else structure spanning from line 24 to line 30.
# Line 24 tests whether chr is lowercase. The upcase method would return a value
# that is different from the calling object only when when it is called on
# a lower case character. If the upcase method is called on a character that is
# uppercase, the return value will be equal to the calling object. The same will
# happen if it is called on a non alphabetic character.


def letter_case_count(string)
  letter_case_count = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |chr|
    if chr.upcase != chr
      letter_case_count[:lowercase] += 1
    elsif chr.downcase != chr
      letter_case_count[:uppercase] += 1
    else
      letter_case_count[:neither] += 1
    end
  end
  
  letter_case_count
end

# Line **: The letter_case_count variable is initialised to a hash that contains
# 3 key-value pairs. The 3 keys are the symbols :lowercase, :uppercase, and
# :neither. Their values are all 0.

# Line **: The chars method is called on the string variable. This returns an
# array whose elements are each of the characters contained in string. The
# each method is called on this array. It's block spans from line 23 to line 31.
# This block has 1 block parameter called chr. It is called once for each 
# character of the calling array. The chr parameter will take up the value of 
# each of these characters successively, each time the block is called.
# There is an if-elsif-else structure spanning from line 24 to line 30.
# Line 24 tests whether chr is lowercase. The upcase method would return a value
# that is different from the calling object only when when it is called on
# a lower case character. If the upcase method is called on a character that is
# uppercase, the return value will be equal to the calling object. The same will
# happen if it is called on a non alphabetic character.



p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Line 22: The letter_case_count variable is initialised to a hash that contains
# 3 key-value pairs. The 3 keys are the symbols :lowercase, :uppercase, and
# :neither. Their values are all 0.

# Line 23: The chars method is called on the string variable. This returns an
# array whose elements are each of the characters contained in string. The
# each method is called on this array. It's block spans from line 23 to line 31.
# This block has 1 block parameter called chr. It is called once for each 
# character of the calling array. The chr parameter will take up the value of 
# each of these characters successively, each time the block is called.
# There is an if-elsif-else structure spanning from line 24 to line 30.
# Line 24 tests whether chr is lowercase. The upcase method would return a value
# that is different from the calling object only when when it is called on
# a lower case character. If the upcase method is called on a character that is
# uppercase, the return value will be equal to the calling object. The same will
# happen if it is called on a non alphabetic character.
# Line 22: The letter_case_count variable is initialised to a hash that contains
# 3 key-value pairs. The 3 keys are the symbols :lowercase, :uppercase, and
# :neither. Their values are all 0.

# Line 23: The chars method is called on the string variable. This returns an
# array whose elements are each of the characters contained in string. The
# each method is called on this array. It's block spans from line 23 to line 31.
# This block has 1 block parameter called chr. It is called once for each 
# character of the calling array. The chr parameter will take up the value of 
# each of these characters successively, each time the block is called.
# There is an if-elsif-else structure spanning from line 24 to line 30.
# Line 24 tests whether chr is lowercase. The upcase method would return a value
# that is different from the calling object only when when it is called on
# a lower case character. If the upcase method is called on a character that is
# uppercase, the return value will be equal to the calling object. The same will
# happen if it is called on a non alphabetic character.



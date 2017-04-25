# swapcase method <= string
# => a new string where uppercase letters are replaced by lower case version and vice versa.
# other letters should be unchanged.

def swapcase(string)
  string.chars.map { |chr| chr.upcase == chr ? chr.downcase : chr.upcase }.join
end

# The swapcase method accepts one paramter that is named string.
# Line 6: the chars method is called on string. This returns an array that 
# contains all the individual characters in string.
# The map method is called on this array.
# It calls the associated block of code once for each element that is 
# contained in the calling array. The corresponding element is passed to
# the block as the value of the block parameter each time this is done.
# The ternary operator within the block tests whether chr is a lower case 
# letter or some character that is not a lower case letter. When the
# upcase method is called on any character that is not a lower case letter,
# the return value will be the equal to the value of the calling character.
# If the upcase method is called on a lower case letter, the return value will
# not be equal to the calling character. If chr is a lower case letter, the
# return value of the block will be determined by calling the upcase method on
# chr. Otherwise, if chr is an uppper case letter or a non alphabetic character,
# the return value of the block will be determined by calling the downcase
# method on chr. Calling the downcase method on non alphabetic characters will
# not transform them. So this process will only impact alphabetic characters.
# Lower case letters will be transformed into upper case letters and upper case
# letters will be transformed into lower case letters.
# The map method will return a new array that contains all the characters 
# that were returned by the block during successive iterations through it.
# The join method is called on this array. That will return a string that
# is comprised of all the characters within the calling array.

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
puts swapcase('') == ''
# FURTHER EXPLORATION:
# When [] is called on a string, it returns a new string. [] does not return a 'component' of the string upon
# which it is called. So when the object that is returned by calling [] on a string is modified, that has
# an impact on the string upon which [] was called. This is very different from the case of an array, which
# unlike a string is a collection of objects. If [] is called on an array arr, that returns an object contained
# within arr, so mutating [] will change the contents of arr.
# However, there is another issue too:
# Within the swap_first_last_characters method, the statement 'a, b = b, a' switches the objects to which 
# these local variables point. However local variable reassignments within a method does not have a bearing
# on variables outside of that method. All variables outside of the swap_first_last_characters method will
# continue to refer to the same objects that they referred to previously.
# Also:
# The swap_first_last_characters method returns an array containing 2 letters, not a word.

def swap_first_last_characters(a, b)
  temp = a.clone
  a.replace(b)
  b.replace(temp)
end

word = 'lambda'
letters = word.chars

swap_first_last_characters(letters[0], letters[-1])
puts letters.join

swap_first_last_characters(word[0], word[-1])
puts word

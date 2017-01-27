#The error is caused by the fact that a string cannot be 'added' to an integer and an integer value is not implicitly converted
#to a string. The problem can be sloved by calling the .to_s method on (40 + 2).
p 'the value of 40 + 2 is ' + (40 + 2).to_s

#It can also be solved by using string interpolation:
p "the value of 40 + 2 is #{(40 + 2)}"
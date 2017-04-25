# understand:
# 1'st and 2'nd fibbonachi numbers are both 1.
# f(n) = f(n-1) + f(n-2)
# i/p: indicates the length of a fibbonachi number
# o/p: returns the index of the first fibbonacci number whose length is given by
#     the i/p parameter.

# algorithm:
# find_fibonacci_index_by_length <= length : integer number greater than 2.
# fibbonacci = [1,1]
# index = 3
# loop do
#   fibbonaci << fib[-1] + fib[-2]
#   if fibbonacci[-1] is greater than 10 to the power (length - 1), then exit loop
#   increment index by 1.
# end
# return the value of index
    
def find_fibonacci_index_by_length(length)
  fibonacci_sequence = [1, 1]
  index = 3
  loop do
    fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
    break if fibonacci_sequence[index - 1].to_s.size >= length
    index += 1
  end
  
  index
end

#In lines 19 through 29, the find fibbonacci index by length method is defined.
#This method accepts 1 parameter called length that has to be an integer number
#which is greater than or equal to 2.
#In line 20, the fibbonacci_sequance variable is assigned an array that contains
#the first 2 fibonacci numbers. 
#Line 21 assigns the number 3 to the index variable. The index variable specifies
#the index of the fibbonacci number that comes after the numbers that are 
#contained in the fibbonacci sequence array.
#Lines 21 through 26 define a loop.
#The loop starts off by adding the next number of sequence to the fibbonacci 
#sequence array.
#If this number has a length that is greater than or equal to the length 
#variable, then the break statement is executed and the loop is exited.
#Otherwise, the index variable is incremented by 1 and the next iteration
#through the loop takes place.
#Once the program comes out of the loop, the index variable will point to the 
#index of the first fibbonaci number whose length is greater than or equal to
#the length variable.
#In line 28, the method returns the value of index.




puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847



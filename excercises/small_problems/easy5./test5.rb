# This program will cause an error. Shows that constants cannot be defined within a dunction. 

def meth1 
  puts 'hello'
  MY_CONSTANT = 'test'
end

meth1
puts MY_CONSTANT
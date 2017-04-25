# Shows that a constant and be 'accessed' from a method. 

def meth1 
  puts 'hello'
  yield
end

def meth2
  puts MY_CONSTANT
end

meth1 do
  MY_CONSTANT = 'test'
end

puts MY_CONSTANT

meth2
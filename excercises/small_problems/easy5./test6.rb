# Shows that a constant can be defined within a block.
 
def meth1 
  puts 'hello'
  yield
end

meth1 do
  MY_CONSTANT = 'test'
end

puts MY_CONSTANT
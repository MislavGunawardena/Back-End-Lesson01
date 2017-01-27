
some_variable = "whatever"
p some_variable.object_id

def some_method
  yield
end

puts '-----'
some_method do
  some_variable.prepend '*'
  p some_variable.object_id
  some_variable  = "whatever else"
  p some_variable.object_id
end

puts '-----'
p some_variable.object_id
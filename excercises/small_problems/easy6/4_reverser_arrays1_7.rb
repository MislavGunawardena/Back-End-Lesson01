def reverse!(list)
  list = list.sort! { |a, b| list.index(b) <=> list.index(a) }
end

list = [1, 2, 3, 2, 3]
p reverse!(list)

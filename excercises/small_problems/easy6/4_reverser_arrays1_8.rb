def reverse!(list)
  list = list.map!.with_index {|x, i| [i,x]}.sort!{ |a, b| b <=> a }.map! {|i| i[1]} 
end

list = [1, 2, 3, 2, 3]
p reverse!(list)
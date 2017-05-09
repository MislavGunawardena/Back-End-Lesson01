def buy_fruit(grocery_list)
  grocery_list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([['banana', 2],['mango', 3]])
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]
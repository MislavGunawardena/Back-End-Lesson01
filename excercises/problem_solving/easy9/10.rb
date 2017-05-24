# Method: buy_fruit
# Argument: A 2 dimensional array, grocery_list
# Side effects: None
# Return: A 1 dimensional array in which each element is repeated a number of
#         times as indicated by the corresponding number in the argument.
# 
# Edge cases:
#   i/p argument is an empty grocery list []
#   i/p argument has at least 1 item whose corresponding quantity is 0
# 
# Algorithm:
#   items = []
#   For each element in grocery list
#     Do quantity times:
#       push product to items
#   return items

def buy_fruit(grocery_list)
  items = []
  grocery_list.each do |product, quantity|
    quantity.times { |_| items << product }
  end
  items
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
p buy_fruit([])
p buy_fruit([['bananas', 0]])



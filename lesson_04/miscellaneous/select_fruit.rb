produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  fruits = {}
  counter = 0
  
  loop do
    break if counter == produce_list.size
    
    current_key = produce_list.keys[counter]
    if produce_list[current_key] == 'Fruit'
      fruits[current_key] = 'Fruit'
    end
    
    counter += 1
  end
  
  fruits
end


puts select_fruit(produce)
puts select_fruit({})
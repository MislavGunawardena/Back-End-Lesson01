produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

#select returns a hash when called on a hash.
fruits = produce.select do |key, value|
           value == 'Fruit'
         end

puts fruits

#map returns a string even when called on a hash.
produce_transformed = produce.map do |key, value|
                        value
                      end
                      
puts produce_transformed.inspect

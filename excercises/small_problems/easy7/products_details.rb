# Print out something
# Print out PRODUCTS
# Print out items that fulfill any one criteria (ex: price less than 250).
# Print out items that fulfill another critera
# Keep incorporating criteria

PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x220", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Macbook", price: 1449},
  { name: "Dell Lattitude", price: 200},
  { name: "Dell Lattitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450},
]

query = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad',
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell',
}

def search(query)
  query_result = []
  PRODUCTS.each_with_object(query_result) do |item|
    conditions = [item[:price] >= query[:price_min], 
                  item[:price] <= query[:price_max],
                  item[:name].downcase.include?(query[:q])]
    query_result << item if conditions.all?
  end
end

puts search(query)
# [{ name: "Thinkpad x220", price: 250}]

puts '----'

puts search(query2)
# [{ name: "Dell Inspiron", price: 300},
#  { name: "Dell Inspiron", price: 450} ]

# def search(query)
# end
# We are dealing with : an array containing hashes. Each hash has two k-v pairs. 
# keys are :name and price, values are an integer and string.
# i/p data: contains the 'logic' that is used process the items in the PRODUCT
# constant.
# o/p : data structe is similar to PRODUCTS, but the array only contains a 
# subset of what is contained in PRODUCTS.

#Algorithsm:
# We have to iterate over all the items in the PRODUCTS array:
#   query_result = []
#   For each hash in the product array:
#     Check whether all the conditions in the query are met.
#       conditions met = false
#       For each condition in query:
#         Check whether that condition is met
#         conditions_met = false if condition is not met.
#     If these conditions are met, place given item in query_result array.
#   return query_results array



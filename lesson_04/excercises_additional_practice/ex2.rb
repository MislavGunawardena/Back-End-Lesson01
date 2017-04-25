ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_total = 0

ages.each_value { |age| ages_total += age }

puts ages_total

puts ages.values.inject(:+)

puts ages.keys.inject(:+)
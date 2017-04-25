hash = {a: 33, c: 12, e: 100, d: 50, b: 20}
hash2 = {50 => 100, 25 => 1, 7 => 66, 88 => 20}

puts hash.sort.to_s
puts hash2.sort.to_s
puts hash2.sort {|a, b| b <=> a}.to_s
puts "-----"

puts hash2.min.to_s
puts hash2.max_by(2) {|k, v| k/v}.to_s
puts hash2.min_by(2) {|k, v| k/v}.to_s
puts hash2.max {|a,b| hash2[a] <=> hash2[b]}.to_s
puts hash2.max.to_s
puts "----"

puts hash2.minmax.to_s
puts hash.minmax.to_s
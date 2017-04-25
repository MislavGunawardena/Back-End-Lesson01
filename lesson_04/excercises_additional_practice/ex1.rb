flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hsh = {}

flintstones.each_with_index do |name, index|
  flintstones_hsh[name] = index + 1
end

puts flintstones_hsh.to_s
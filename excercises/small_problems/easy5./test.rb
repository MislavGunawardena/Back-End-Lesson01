str = "l\tala   lala"
puts str
p str.match(/\t/)

str2 = <<EOF
0x1234
Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
The quick brown fox jumps over the lazy dog
THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG
EOF

puts str2.count(/[[a-wyzA-WYZ]]/.to_s)
names = ['peter', 'justin', 'simon', 'jake', 'oliver', 'pat', 'ed']

names.sort_by! do |name|
  name.size
end

puts names.inspect

names.sort_by! do |word|
  word[-1]
end

puts names.inspect
puts '-----'

people = {mike: 25, blake: 45, peter:68, Sam: 33}

people_by_age = people.sort_by do |name, age|
                  puts "#{name} is #{age} years old."
                  age
                end

puts people_by_age.inspect
puts people_by_age.to_h

people_by_name = people.sort_by do |name, age|
                   name.downcase
                 end

puts people_by_name.to_h
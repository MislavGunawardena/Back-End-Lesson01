# where does code come from?
# 1) Core library
# 2) Standard Library : with the require statement.
# 3) External Library file. Ruby gems.
# 4) Meta-programming: code is dynamically generated while a program is being run.

require 'prime' # The class 'prime' is in the Standard Library. Therefore it has to be required if we
                # want to make use of it.
require 'pry' # 'pry' is an external library, or 'gem'.

puts require_relative 'test4'
puts require_relative 'test4' # require cannot be used to load the same file more than once.
                              # returns false the second time around.
puts load 'test4.rb' # full file name with extension is necessary for the load method.
puts load 'test4.rb' # load can be used to reload a file.


(1..9).each do |num|
  binding.pry
  puts "#{num} is #{(num.prime? ? 'a prime.' : 'not a prime.')}"
end
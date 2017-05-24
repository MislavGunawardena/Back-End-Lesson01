# The expected result was not obtained because there conditional expression
# that was required for the desired output was not provided for the elsif
# clause. There is no conditional expression for the elsif clause in the
# same line. Hence, the map method that was intended as the first statement
# under the elsif clause, played the role of that conditional expression.
# The map method here returns an array which evaluates to true. Therefore
# all the statements of the elsif clause that come after the map method will 
# be executed. Since there are no such statements coming under the elsif
# clause and after the map method, the overall if statement will return nil.
# Hence nil was printed 3 times. The problem was corrected by providing
# the elsif clause a conditional expression array.size > 1.

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# []
# [21]
# [9, 16]
# [25, 36, 49]
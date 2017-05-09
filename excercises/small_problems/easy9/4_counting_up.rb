def sequence(number)
  if number > 0
    (1..number).to_a
  else
    (1..-number).to_a.map { |number| -number }
  end
end

p sequence(-5)
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
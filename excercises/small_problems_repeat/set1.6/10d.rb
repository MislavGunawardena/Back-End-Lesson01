def triangle(size , corner = :bot_right)
  case corner
  when :top_left then size.downto(1) { |n| puts "#{'*' * n}" }
  when :top_right then size.downto(1) { |n| puts "#{'*' * n}".rjust(size) }
  when :bottom_left then 1.upto(size) { |n| puts "#{'*' * n}" }
  when :bottom_right then 1.upto(size) { |n| puts "#{'*' * n}".rjust(size) }
  end
end

triangle(5, :top_left)
triangle(7, :top_right)
triangle(5, :bottom_left)
triangle(7, :bottom_right)
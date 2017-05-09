INF = 1 / 0.0 # Inf represents Infinity
def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3.0
  
  case average
  when 90..INF then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  when 0...60 then 'F'
  end
end

p get_grade(55, 65, 750)
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
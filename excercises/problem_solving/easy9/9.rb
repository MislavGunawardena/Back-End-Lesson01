# Method: get_grade
# Arguments: 3 integers, grade1, grade2, grade3
# Side effects: None
# Return: String. A sigle character that corresponds to the letter grade of 
#         the avarage of 3 scores.
# Edge cases: 
#   All scores are 100
#   All scores are 0
# 
# Algoritm:
#   average_score = total of 3 inputs / 3.0
#   Retrun letter grade corresponding to the average.

def get_grade(grade1, grade2, grade3)
  average_score = (grade1 + grade2 + grade3) / 3.0
  case
  when average_score > 100 then nil
  when average_score >= 90 then 'A'
  when average_score >= 80 then 'B'
  when average_score >= 70 then 'C'
  when average_score >= 60 then 'D'
  when average_score >= 0  then 'F'
  else                          nil
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
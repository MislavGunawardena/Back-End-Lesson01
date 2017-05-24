def substring(string, begin_num, end_num = nil)
  return string[begin_num] if end_num.nil?
  string.slice(begin_num..end_num)
end

p substring("honey", 4, 5)

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"

# Notes:
# Don't overthink a problem. If the problem definition does not ask us to 
# refrain from using it, then go ahead and use it if that makes things easier!
# When it appears that a certain method might help solve a problem, go ahead
# and play with it on irb!
# Also:
# If I am finding it hard to develop an algorithm, it's ok to go ahead and
# 'play' with the code! If the algorithm comes to me while playing with 
# code, then I can stop playing, complete the algorithm, and start coding
# methodically. 





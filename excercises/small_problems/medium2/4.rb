# Maybe, ** think about this **, I should not worry about readable variable
# names while developing a solution to a problem. I can name variables for
# readability along with other things aimed for improving readability when I
# refactor a solution after developing a working version.

# Whenever I change the name of a variable, or a constant or a method, I should
# take care to change that name for each occurence of it throughout the program.

def balanced?(str)
  paranthesis_stack = []
  balanced_paranthesis = true
  str.each_char do |chr|
    if chr == '('
      paranthesis_stack << chr
    elsif chr == ')' && !paranthesis_stack.empty?
      paranthesis_stack.pop
    elsif chr == ')' && paranthesis_stack.empty?
      balanced_paranthesis = false
      break
    end
  end
  balanced_paranthesis = false unless paranthesis_stack.empty?
  
  balanced_paranthesis
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
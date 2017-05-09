def balanced?(str)
  paranthesis_stack = []
  balanced_paranthesis = true
  str.each_char do |chr|
    case chr
    when '('
      paranthesis_stack << chr
    when ')'
      if paranthesis_stack.empty?
        balanced_paranthesis = false
        break
      else
        paranthesis_stack.pop
      end
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
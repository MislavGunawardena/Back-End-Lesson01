def balanced?(str)
  paranthesis_stack = []
  balanced = true
  str.each_char do |chr|
    case chr
    when '('
      paranthesis_stack << chr
    when ')'
      case paranthesis_stack
      when []
        balanced = false
        break
      else
        paranthesis_stack.pop
      end
    end
  end
  balanced = false unless paranthesis_stack.empty?
  
  balanced
end

p balanced?('a())def(')

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
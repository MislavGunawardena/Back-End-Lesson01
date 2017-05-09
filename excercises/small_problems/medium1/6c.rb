VALID_COMMANDS = %w(PUSH ADD SUB MULTI DIV MOD POP PRINT)

def minilang(program)
  stack = []
  register = 0
  tokens = program.split
  
  invalid_tokens = tokens.reject do |token|
                       VALID_COMMANDS.include?(token) || 
                       token.to_i.to_s == token
                   end
  
  # detecting invalid tokens:             
  unless invalid_tokens.empty?
    puts "Program terminated because invalid minilang commands: "\
         "#{invalid_tokens}"
    return "Invalid token error: #{invalid_tokens}"
  end
  
  tokens.each do |token|
    # detecting retrieval from empty stack:
    if %w(ADD SUB MULTI DIV MOD POP).include?(token) && stack.empty?
      puts "Program terminated because #{token} operation attempted to "\
           "retrieve a value from an empty stack."
      return "Error: #{token} command attempts retrieval from empty stack."
    end
    
    case token
    when 'PUSH'  then stack << register
    when 'ADD'   then register = register + stack.pop
    when 'SUB'   then register = register - stack.pop
    when 'MULT'  then register = register * stack.pop
    when 'DIV'   then register = register / stack.pop
    when 'MOD'   then register = register % stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
  
  nil
end

minilang("5 PUSH 7 ADD ADDt ADD ADD PRINT")
#=> Program terminated because invalid minilang commands: ["ADDt"]
minilang("5 PUSH 7 ADD ADD ADD ADD PRINT")
#=> Program terminated because ADD operation attempted to retrieve a value from an empty stack.

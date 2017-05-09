VALID_COMMANDS = %w(PUSH ADD SUB MULTI DIV MOD POP PRINT)

def minilang(program)
  stack = []
  register = 0
  tokens = program.split
  
  invalid_tokens = tokens.reject do |token|
                       VALID_COMMANDS.include?(token) || 
                       token.to_s.to_i == token
                   end
  
  tokens.each do |token|
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
end

minilang_program = <<EOF
3
PUSH
5
MOD
PUSH
7
PUSH
5
PUSH
4
MULT
SUB
PUSH
3
ADD
DIV
PRINT
EOF

minilang_program = minilang_program.split.join(' ')
minilang(minilang_program)

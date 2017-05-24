# Method: minilang
# Argument: A string. Contains a machine language program.
# Side effects: Has to print to the screen what the input string dictates.
# Return: Not specified.
# Edge cases:
#   * When the input sting does not have a print command, nothing should be 
#     printed
# 
# Algorithm:
#   program <= argument
#   1) stack = []
#   2) register = 0
#   3) commands = program.split
#   4) For each command in commands, do the following:
#        if command == 'PUSH'      
#          stack << register
#        elsif command == 'ADD'
#          register = register + stack.pop  
#        ...... and so on ..... implement all possible commands
#        PUSH, ADD, SUB, MULT, DIV, MOD, POP, PRINT, and n

def minilang(program)
  stack = []
  register = 0
  commands = program.split
  commands.each do |command|
    case command
    when 'PUSH'  then stack << register
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register = register * stack.pop
    when 'DIV'   then register = register / stack.pop
    when 'MOD'   then register = register % stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = command.to_i
    end
  end
  nil
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

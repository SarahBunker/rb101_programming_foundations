=begin
#------------------------------------------------------------------------------
PROBLEM:
create a stack and register program
register is current value
operations store result in register

commands
n place value n in the register, doesn't affect the stack
push push the register value onto the stack, leaves value in the register
add pops a value from the stack, adds to register value, stores result in the register
sub pops a value...subtracts
mult pops a value... multiplies
div pops a value...divides
mod pops a value...divides, stores remainder
pop removes the topmost item from the stack and places in the register
print print the register value

input: commands stored in string
output: 
rules:
    Explicit requirements:
      all operations are integer > important for DIV and MOD
      assume all commands are valid
      initialize register to 0
    Implicit requirements:
      assuming commands are from left to right
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE
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

#------------------------------------------------------------------------------
ALGORITHM
example:

each of the functions is a method

- 
- 
- 
- 
- 
- 
- 
- 

=end

def minilang(string)
  commands = string.split
  register = 0
  stack = []
  string.split.each do |command|
    case command
    when "PUSH" then stack << register
    when "ADD" then register += stack.pop
    when "SUB" then register -= stack.pop
    when "MULT" then register *= stack.pop
    when "DIV" then register /= stack.pop
    when "MOD" then register %= stack.pop
    when "POP" then register = stack.pop
    when "PRINT" then puts register
    else register = command.to_i
    end
  end
end



minilang('PRINT')
# 0

puts

minilang('5 PUSH 3 MULT PRINT')
# 15

puts

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
puts

minilang('5 PUSH POP PRINT')
# # 5
puts

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7
puts

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6
puts

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12
puts

minilang('-3 PUSH 5 SUB PRINT')
# # 8
puts

minilang('6 PUSH')
# # (nothing printed; no PRINT commands)
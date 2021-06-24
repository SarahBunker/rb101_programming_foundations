=begin
Problem:
write a method
  implements a stack and register based language

  has the following commands
    n > number goes to register, doesn't modify stack
    PUSH > push the r. value onto the stack. leaves value in the register
    ADD > pops a value from the stack and adds it to the r. value
      stores the result in the r.
    SUB > "                         subtracts..............."
    DIV > "...........................divides.................."
    MOD > "...........................divides........stores the remainder in R.
    POP > removes top most item from the stack and places in register
    PRINT > print R. value

Examples: provided

Data:
  Array to store stack. index 0 is the bottom of the stack.
    end of array is top of stack
  integer to store register
  integer to store removed value
  integer to store dividend and remainder
  store current command as a string
  Commands: strings
    convert to strings and access them using shift

Algorythm:
  initialize register = 0
              command = ""
              stack array = []
  Turn string command into array of words (string)
  loop do
    Break loop when command array is empty
    Access and remove first command
    Compare to list of command strings to determine what to do
    if PUSH
    elsif ADD
    ..
    else it doesn't match a string change to integer and add to register
  end

Code:

=end

VALID_COMMANDS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT 0)

def valid_int(string)
  string.to_i.to_s == string
end

def valid_command(string)
  VALID_COMMANDS.include?(string) || valid_int(string)
end

def minilang(commands)
  register = 0
  stack = []
  commands.split.each do |command|
    stack_empty = stack.empty?
    p "Invalid command: #{command} entered." if !valid_command(command)
    break if !valid_command(command)
    case command
    when "PUSH"
      stack.push(register)
    when "ADD"
      p "Error with command stack." if stack_empty
      break if stack_empty
      register += stack.pop
    when "SUB"
      p "Error with command stack." if stack_empty
      break if stack_empty
      register -= stack.pop
    when "MULT"
      p "Error with command stack." if stack_empty
      break if stack_empty
      register *= stack.pop
    when "DIV"
      p "Error with command stack." if stack_empty
      break if stack_empty
      register /= stack.pop
    when "MOD"
      p "Error with command stack." if stack_empty
      break if stack_empty
      register %= stack.pop
    when "POP"
      p "Error with command stack." if stack_empty
      break if stack_empty
      register = stack.pop
    when "PRINT"
      p register
    else              register = command.to_i
    end
  end
end

minilang('PRINT')
# 0
p ""
minilang('5 PUSH 3 MULT ADD PRINT')
# 15
p ""
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
p ""
minilang('5 PUSH POP PRINT')
# 5
p ""
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
p ""
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
p ""
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
p ""
minilang('-3 PUSH 5 SUB PRINT')
# 8
p ""
minilang('6 PUSH popsicle_bike')
# (nothing printed; no PRINT commands)
p ""
minilang("3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT")
# (3 + (4 * 5) - 7) / (5 % 3)

=begin
futher exploration
# (3 + (4 * 5) - 7) / (5 % 3)
(4*5
3 + 20
23 - 7)  >> 16

5%3 >> 2

16 / 2 >> 8

(5 PUSH 3 MOD PUSH) (7 PUSH) [(3 PUSH) (4 PUSH 5 MULT) ADD] SUB DIV PRINT

3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT"
R 8
S 

=end

=begin
I thought I couldn't use each because I was removing stuff from commands list
but I don't have to remove the commands to itterate through them.
=end
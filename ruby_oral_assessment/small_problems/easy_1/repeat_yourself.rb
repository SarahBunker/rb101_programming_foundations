=begin

#------------------------------------------------------------------------------
PROBLEM:
write a method that takes two arguments (string, positive number) that prints string integer times

input: string, n - integer
output: print string n times
rules:
    Explicit requirements:
      integer will be a positive integer
    Implicit requirements:
      assume integer and string inputs
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
repeat('Hello', 3)
outputs 
Hello
Hello
Hello
#------------------------------------------------------------------------------
DATA STRUCTURE
string and integer inputs
outputs strings

#------------------------------------------------------------------------------
ALGORITHM
1) define repeat method
  method takes two arguments
2) for integer times print out string

=end

def repeat(string, integer)
  integer.times{puts string}
end

repeat("Hello",3)
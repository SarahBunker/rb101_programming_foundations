=begin
#------------------------------------------------------------------------------
PROBLEM:
write method that returns sum of digits
input: integer
output: integer, sum of digits
rules:
    Explicit requirements:
      input will always be positive integer
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.define method
2.split digits into array
3.sum array
4.return sum



=end

def sum(int)
  int.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
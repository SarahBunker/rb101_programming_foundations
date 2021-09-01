=begin

#------------------------------------------------------------------------------
PROBLEM:
write a method that takes one integer arg that can be positive, negative, or zero. The method returns true if the number's absolute value is odd. assume arguement is a valid integer value.
input: integer
output: boolean, true/false
rules:
    Explicit requirements:
      returns true if absolute value is odd
      integer can be zero, negative, or 0
      input will be an integer
      zero is even
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
#------------------------------------------------------------------------------
DATA STRUCTURE
input integer
output boolean

#------------------------------------------------------------------------------
ALGORITHM
1. define method is_odd?
  takes one argument
2. take absolute value of integer
3. take modulus of integer
4. if modulus is 1 then return true
4. otherwise return false

=end
def is_odd?(num)
  num.abs.remainder(2) == 1
end


puts is_odd?(2)    ==false  # => false
puts is_odd?(5)    ==true   # => true
puts is_odd?(-17)  ==true   # => true
puts is_odd?(-8)   ==false  # => false
puts is_odd?(0)    ==false  # => false
puts is_odd?(7)    ==true   # => true
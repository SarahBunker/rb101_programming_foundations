=begin

#------------------------------------------------------------------------------
PROBLEM:
write a methd that takes an integer and returns a list of the digits 
input: integer
output: array with digits as elements, one digit is on the right
rules:
    Explicit requirements:
      integer input is a positive integer
      digits are organized from largest digit on the left to smallest digit on the right.
    Implicit requirements:
      
Unclear parts of problem?
What happens if the integer is zero
#------------------------------------------------------------------------------
EXAMPLES

puts digit_list(12345)  == [1, 2, 3, 4, 5]     # => true
puts digit_list(7)      == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444)    == [4, 4, 4]             # => true
puts digit_list(0)      == [0]
#------------------------------------------------------------------------------
DATA STRUCTURE
integer and array

#------------------------------------------------------------------------------
ALGORITHM
1. define method
2. convert integer to array of digits
3. reverse array
4. return array

=end

def digit_list(int)
  int.digits.reverse
end

puts digit_list(12345)  == [1, 2, 3, 4, 5]     # => true
puts digit_list(7)      == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444)    == [4, 4, 4]             # => true
puts digit_list(0)      == [0]
=begin
#------------------------------------------------------------------------------
PROBLEM:
do the maximum rotation

input: 
output: 
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
735291    rotate all  6
3[52917]  rotate last 5
32[9175]  rotate last 4
321[759]  rotate last 3
3215[97]  rotate last 2
321579

rotating one returns same number
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- iterate from size of integer down to 2
- using rotate, n-digits, rotate maximum rotation
- 
- return integer

=end

def rotate_array(array)
  first_element = nil
  new_array = []
  array.each_with_index do |item,i|
    first_element = item if i == 0
    new_array << item if i >= 1
  end
  new_array << first_element
end

def rotate_rightmost_digits(integer, n)
  integer_array = integer.digits.reverse
  integer_array[-n..-1] = rotate_array(integer_array [-n..-1])
  integer_array.join.to_i
end

def max_rotation(integer)
  m = integer.to_s.size
  while m > 0 do
    integer = rotate_rightmost_digits(integer,m)
    m -= 1
  end
  integer
end

p max_rotation(735291)        == 321579
p max_rotation(3)             == 3
p max_rotation(35)            == 53
p max_rotation(105)           == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

puts 

p max_rotation(123456)
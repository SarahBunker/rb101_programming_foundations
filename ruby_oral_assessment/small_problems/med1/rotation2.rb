=begin
#------------------------------------------------------------------------------
PROBLEM:
rotate last n digits of a number

input: number to rotate, n for digits
output: rotated number
rules:
    Explicit requirements:
      rotating 1 number is the original array
      can use rotate method from previous exercise
      assume n is always a positive number
    Implicit requirements:
      rotation is moving the first digit to the end.
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
rotate_rightmost_digits(73529[1], 1) == 735291
rotate_rightmost_digits(7352[91], 2) == 735219
rotate_rightmost_digits(735[291], 3) == 735912
rotate_rightmost_digits(73[5291], 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917


#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- select last n digits
- rotate using rotate array
- replace last n digits with rotated array
- return new integer

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


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


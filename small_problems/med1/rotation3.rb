=begin
in: integer
out: integer
rules:

length is 6
rotate all of the digits
rotate all but the first digit
rotate all but the first 2 digits
rotate all but the first 3 digits
rotate all but the first 4 digits

plot:

=end

#---------------
def rotate_array(arr)
  arr2 = arr.dup
  first = arr2.shift
  arr2 << first
end
#---------------

def rotate_rightmost_digits(int,n)
  arr = int.digits.reverse
  return rotate_array(arr).join.to_i if n == arr.length
  m = arr.length - n - 1
  new_array = arr[0..m] << rotate_array(arr[-n..-1])
  new_array.join.to_i
end
#------------------

def max_rotation(int)
  n = int.digits.length
  int.digits.length.times do |i|
    int = rotate_rightmost_digits(int,n)
    n -= 1
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

=begin
I needed the length of the integer
make sure to pass an integer into the rotate_rightmost digits because it is expecting
an integer, not an array.

without steps 1 and 2 this would have been harder.
step one rotate once
step two rotate rightmost n elements
step three iterate
  start with rotating all then one less then all then two less then all...

Further Exploration
preserve multiple zeros
rotate as a string instead as an integer
=end
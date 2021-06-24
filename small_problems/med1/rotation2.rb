=begin
in: integer, n(number of digits)
out: integer with the last n digits rotated
rules:
n is positive
when n is 1 returns the same array
when n = number of digits same as rotation 1 assignment

plot:
convert integer to array
make sure order is from largest to ones place
slice out n digits from end
rotate
add back to array
convert new array to integer
return integer
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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


#their solution used
#all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#they assigned the last digits with the rotated digits.

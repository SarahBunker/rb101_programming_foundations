=begin
in: array
out: new array with the first element moved to end of array
rules:
  not modifying original array
  can't use rotate or rotate!

plot:
initialize new array
store first item
iterate through the other items and add to array
add first item last
return new array
=end

=begin

def rotate_array(arr)
  new_array = []
  item1 = nil
  arr.each do |item|
    if item1 == nil
      item1 = item
    else
      new_array << item
    end
  end
  new_array << item1
end
=end

def rotate_array(arr)
  arr2 = arr.dup
  first = arr2.shift
  arr2 << first
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string("Hello") == "elloH"

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_integer(1234) == 2341
p 1234.digits.reverse
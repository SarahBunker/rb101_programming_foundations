=begin
input: array
output: array
rules:
` return array that has only the even (0.2.4..) index values of the given array
`blank array returns an empty array
works with strings and numbers

algorythm
create empty array
iterate over array with index or counter to track index
store even index values in new array

could use loop or iterator

=end

def oddities(input_a)
  new_a = []
  input_a.each_index {|i| new_a << input_a[i] if i.even?}
  new_a
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

=begin
SOLUTION

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

This approach is a little more scalable.

If I wanted to do every 3rd or 4th number I could change the if conditional
=end

def every_what_element(input_a,pattern)
  new_a = []
  input_a.each_index do |i|
    if i % pattern == 0
      new_a << input_a[i]
    end
  end
  new_a
end

p every_what_element([0,1,2,3,4,5,6,7,8,9,10],1)
p every_what_element([0,1,2,3,4,5,6,7,8,9,10],2)
p every_what_element([0,1,2,3,4,5,6,7,8,9,10],3)
p every_what_element([0,1,2,3,4,5,6,7,8,9,10],4)
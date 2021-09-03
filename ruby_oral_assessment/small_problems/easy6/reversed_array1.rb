=begin
#------------------------------------------------------------------------------
PROBLEM:
write a method that mutates the array
reverses the order of the elements of the array without using Array#reverse
return value must be same object
input: array
output: same array with elements in reverse order
rules:
    Explicit requirements:
      reversing order of elements, not the contents of each element
    Implicit requirements:
      empty array returns an empty array
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- initialize new array
- itterate through array
- add elements to new array in reverse order
- iterate through new array with index
- replace array at current index with newarray at current index
- return array
- 

=end

def reverse!(array)
  new_array = []
  array.each{|item| new_array.prepend(item)}
  new_array.each_with_index{|item, index| array[index] = item}
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

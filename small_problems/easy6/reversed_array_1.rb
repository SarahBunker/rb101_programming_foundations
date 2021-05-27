=begin
in: array
out: mutated array with elements reversed
rules:
  only reverses elements, doesn't reverse the objects themselves
  eg the string "abc" at array[0] will stay "abc"


#pop removes the last element
#shift removes the first element

copy elements into a new array
empty original array
loop
  remove last element from copied array
  add element to orignal array
end
return original array

=end

#DO THIS FIRST
#before looking at solution try to solve the problem using a, b = b, a

def reverse!(array)
  return [] if array.length == 0
  array2 = []
  array.each{|x| array2 << x}
  array.clear
  loop do
    array << array2.pop
    break if array2.length <= 0
  end
  array
end

p reverse!([])

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

=begin
SOLUTION
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

solution ends in the middle so you don't remake the old array
solution both mutates caller and has meaningful return, not a good practice



=end
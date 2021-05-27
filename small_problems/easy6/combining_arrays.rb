=begin
in: 2 arrays
out: 1 array with all unique values in both arrays
rules:
  no duplicate values even if there are duplicates in the original array
  
plot
initialize array3
iterate through array2 and array1 adding each element to array3
delete duplicates in array3 (uniq)
return array1

choose to use a third array to avoid mutating the arrays

=end

def merge(array1, array2)
  array3= []
  array1.each{|x| array3 << x}
  array2.each{|x| array3 << x}
  array3.uniq
end

array1 = [1,3,5]
array2 = [3,6,9]
p merge(array1, array2)
p array1
p array2

p merge([1, 3, 5], [3, 6, 9]) 


p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=begin
SOLUTION
def merge(array_1, array_2)
  array_1 | array_2
end

They used a new method called set union, super efficient
ary | other_ary → new_ary  ~ Set Union — Returns a new array by joining ary with other_ary, excluding any duplicates and preserving the order from the given arrays.

=end
=begin
#------------------------------------------------------------------------------
PROBLEM:
interleave elements from two arrays into new array
input: two arrays
output: new array
rules:
    Explicit requirements:
      assume both inputs are arrays, non-empty, same number of elements
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- initialize new array
- iterate through one array with index
- add first array at index to new array
- add second array at index to new array
- 
- 
- 
- 

=end

# def interleave(arr1,arr2)
#   new_array = []
#   arr1.each_with_index do |item, index|
#     new_array << item << arr2[index]
#   end
#   new_array
# end

def interleave(arr1,arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

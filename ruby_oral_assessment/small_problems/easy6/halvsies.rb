=begin
#------------------------------------------------------------------------------
PROBLEM:
split an array into half and store each half in a nested array
input: array
output: nested array, first element is the first half of the array, 2nd element is the second half of the array
rules:
    Explicit requirements:
      if there is an odd number of elements the middle element goes to the first half array
    Implicit requirements:
      an input with a single element returns that element in the first array, and an empty array in the second array
      empty array returns two empty arrays.
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

1,5,2,4,3
0,1,2,3,4

size is 5
middle is 5/2 = 2

1,2,3,4
0,1,2,3

size is 4
middle is 2
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- determine if there is an odd number of elements
- I need to determine the half way point
    size/2 if it is odd is the index for the first array
    size/2 - 1 if it is even
- create and store the two sub arrays
-   first array is 0 to half way point (+1 if odd) 
-   second array is [half way point (+1 if odd)]+1 to the last element
- return new array
- 

=end

def halvsies(array)
  middle_index = array.size/2
  middle_index -= 1 if array.size.even?
  first_half = array[0..middle_index]
  second_half = array[middle_index+1..-1]
  [first_half,second_half]
end

p halvsies([1, 2, 3, 4])    == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5])             == [[5], []]
p halvsies([])              == [[], []]

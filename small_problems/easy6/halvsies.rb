=begin
in: array
out: two arrays nested, first half and second half of the original array
rules:
  if array is odd length the middle item goes to first array
  a single length array woulf return a single array and a blank array
  an empty array would return two blank arrays

plot
function
  initilize two arrays
  find length of array
  split array length in half to find lengths of array, round down
  
  initialize index
  2nd array starting index = half array length, unless odd then half array length +1
  iterate
  starting at front of array and at an index halfway in or just past halfway for odd
  add each element until you get to length of half of array rounded down
    index == half_array_length
  increment indexes  
  
  if odd
    add middle piece to first array
  
  create nested array with two arrays
end

=end

#START HERE
#rewrite solution using .slice before looking at solution

def halvsies(array)
  arr1 = []
  arr2 = []
  half_length_round_down = array.length/2
  
  index = 0
  index2 = half_length_round_down
  index2 += 1 if array.length.odd?
  
  loop do
    break if index == half_length_round_down
    arr1 << array[index]
    arr2 << array[index2]
    index  += 1
    index2 += 1
  end
  
  if array.length.odd?
    arr1 << array[index]
    # because break statement is after index increases we don't have to increase it again
  end
  
  [arr1, arr2]
end

p halvsies([1, 5, 2, 4, 3])
p halvsies([5])

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]


=begin

SOLUTION
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

=end
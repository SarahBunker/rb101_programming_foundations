=begin
#------------------------------------------------------------------------------
PROBLEM:
rotating the first element of the array to the end of the array.
non mutating

input: array
output: new array, with first element on the end
rules:
    Explicit requirements:
      non mutating
      can't use #rotate, #rotate!
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- itterate over array
-   access first element of array and store in variable
-   add the rest of the elements to new_array
- add first element to end of array
- return new array
- 
- 
- 

=end

def rotate_array(array)
  first_element = nil
  new_array = []
  array.each_with_index do |item,i|
    first_element = item if i == 0
    new_array << item if i >= 1
  end
  new_array << first_element
end

x = [1, 2, 3, 4]

p rotate_array([7, 3, 5, 2, 9, 1])  == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c'])     == ['b', 'c', 'a']
p rotate_array(['a'])               == ['a']


p rotate_array(x)                   == [2, 3, 4, 1]   # => true
p x                                 == [1, 2, 3, 4]                 # => true
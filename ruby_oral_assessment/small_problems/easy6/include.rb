=begin
#------------------------------------------------------------------------------
PROBLEM:
rewrite the Array#include? method

input: array, and search value
output: boolean
rules:
    Explicit requirements:
      can't use Array#include?
    Implicit requirements:
      an empty array doesn't include nill
      nill can be an element in an array
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- def method
- iterate through array
- compare element to arguement
- 
- 
- 
- 
- 

=end

def include?(array,object)
  array.each do |item|
    return true if item == object
  end
  false
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin
#------------------------------------------------------------------------------
PROBLEM:
combine two elements removing any duplicate values
input: two arrays
output: one array
rules:
    Explicit requirements:
      remove duplicates
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
- add elements from second array to first array
- remove duplicates
- 
- 
- 
- 
- 

=end

def merge(arr1, arr2)
  arr1.each {|item| arr2 << item}
  arr2.uniq.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
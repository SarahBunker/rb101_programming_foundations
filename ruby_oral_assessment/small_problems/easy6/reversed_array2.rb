=begin
#------------------------------------------------------------------------------
PROBLEM:
write a method
reverses elements in array, can't be the same as the previous exercise

DONT modify array
input: 
output: 
rules:
    Explicit requirements:
      
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES

#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- index for first element
- index for last element
- loop
- switch first and last element
- increment indices
- break when you reach the middle of the array
- 
- 

=end

#def reverse(array)
#  new_array = []
#  array.each{|item| new_array.prepend(item)}
#  new_array
#end

#def reverse(array)
#  array.each_with_object([]) {|item,array| array.prepend(item)}
#end

def reverse(array)
  
end

p reverse([1,2,3,4])      == [4,3,2,1]          # => true
p reverse(%w(a b e d c))  == %w(c d e b a)  # => true
p reverse(['abc'])        == ['abc']              # => true
p reverse([])             == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list                    == [1, 3, 2]                     # => true
p new_list                == [2, 3, 1]                 # => true

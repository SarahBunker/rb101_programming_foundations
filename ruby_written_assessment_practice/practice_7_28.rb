=begin
local variable a local variable b
assigned to string pointers

local varariable a is initalized to point to string

use back tics to indicate code
surround code in back tics

# This is going to output four strings: `"Dark Chocolate"`, `"Banana"`...
Line `5` 
Local variable `a`

What is the method invocation doing?
What is the block parameter referring to?

'false' and 'nil' are the only things that are considered 'falsey'

block is code that follows a method invocation that is marked at the beginning and end by do...end or {}

# What does it return? How many elements will it return? What does it do with the return value of the block it's passed?

#map 
Transformation
returns array same size as self   (#always returns an array even evoked on a hash)
contents point to return values of block passed to map

#select
Selection
Returns a new collection
When called on a arrays it will return a new array.
When called on a hash it will return a new hash.
Evaluates the truthyness of each element passed to the block. If the block returns truthy then
the element passed will be added to the collection otherwise the element will not be added to the
collection.
The number of elements returned will be less then or equal to the orignal number of elements.

# each
Iteration
Returns the collection it's called on regardless of the return value of the block
Same number of elements

arr1 = [2, 8, 4, 10, 7, 3, 1]

p arr1.sort # What does this return? Does it mutate the array?

The method invocation of sort returns a copy of the array that has elements that are sorted
from smallest to largest. '[1,2,4,7,8,10]'
The original array is not mutated.

a <=> b 

-1 if a < b
0 if a == b
1 if a > b

-1  0  1
<   =  >


(uses the <=> method)


=end

#################################
=begin
Practice

writing code in back tics
adding local variable to discription of variables

=end
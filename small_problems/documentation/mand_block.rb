a = [1, 4, 8, 11, 15, 19]

# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:
# How would you search this Array to find the first element whose value exceeds 8?

puts a.bsearch {|x| x > 8 }

=begin
bsearch {|x| block } → elem
this means that the block is required.
from below we learn that the block must return a true or false
then bsearch returns the first one that is true
=end
=begin
string[2,3] is a shortcut for .slice
.slice(index,length) returns an substring starting at index and with a given character length

String#slice returns a new string
Array#slice returns a new array, mostly

arr.slice(3) returns just the value at the index 3

keys must be unique and will overwrite previous data if tried to use multiple times

a_hash.keys returns just the keys of a hash
a_hash.values returns just the values

-----------------------------
Indexing out of bounds
string: nil, know that is an error because strings usually have stuff
array: nil, nil could be a valid input in an array, so this can throw people off
.fetch(index) returns element at given index, throws index error exception if out of bounds
#fetch is safer, but #[] is more common


-------------------------------
Negative indices
last index in collection is -1 (can't have more then one zero, so starts at negative 1)

Hashes also have a #fetch method that works similarly to array#fetch and string#fetch

###################
Conversion
string#chars ~ returns array of individual characters
arrah#join ~ returns string with elements of array joined together

.split defaults to splitting on whitespace
.join defaults to joining without whitespace

Array#to_h ~ converts multidemensional array in [key,value] pairs
=end

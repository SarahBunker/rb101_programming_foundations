=begin
#------------------------------------------------------------------------------
PROBLEM:
sort an array of integers based on english words for each number
input: array of integers
output: sorted array of integers
rules:
    Explicit requirements:
      array sorted by english name of number
    Implicit requirements:
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

- define method
- create hash storing names with numbers
- initialize empty hash
- iterate through array
- get english name from constant hash
- add to hash where key is english name and value is integer
- sort hash by key
- create array from only value
- return array
- 

=end

ALPHA_NAME = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9  => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

def alphabetic_number_sort(array)
  array.sort_by! {|num| ALPHA_NAME[num] }
end

# def alphabetic_number_sort(array)
#   array.sort{|a,b| ALPHA_NAME[a] <=> ALPHA_NAME[b]}
# end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

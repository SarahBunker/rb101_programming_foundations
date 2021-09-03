=begin
#------------------------------------------------------------------------------
PROBLEM:
find and return a duplicate value in an array of integers
input: array of integers
output: integer that was duplicated
rules:
    Explicit requirements:
      known duplicate in array
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
- initialize a new array
- itterate through array
    break if value is part of new array, returning the value
-   store each value of the array in new array
- return value that was part of new array
- 
- 
- 

=end

def find_dup(array)
  new_array =[]
  result = nil
  array.each do |item|
    if new_array.include?(item)
      result = item
      break
    end
    new_array << item
  end
  result
end

p find_dup([1,2,3,4,1])


p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
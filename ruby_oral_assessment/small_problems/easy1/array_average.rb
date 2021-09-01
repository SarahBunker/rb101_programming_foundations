=begin
#------------------------------------------------------------------------------
PROBLEM:

input: array of integers
output: integer representing the average of all num in array
rules:
    Explicit requirements:
      array will never be empty
      numbers will always be positive
      
    Implicit requirements:
      use integer division
      
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
#------------------------------------------------------------------------------
DATA STRUCTURE


#------------------------------------------------------------------------------
ALGORITHM
example:

1.define method
  a. add all elements
  b. divide by number of elements
  c. return result
2.
3.



=end

def average(arr)
  arr.reduce(:+) / arr.size.to_f
end

puts average([1, 6])                  #== 4.5 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8])    #== 25.666
puts average([9, 47, 23, 95, 16, 52]) #== 40.333
=begin
#------------------------------------------------------------------------------
PROBLEM:
Write a method that counts the num occurances of each element in a given array


input: array
output: printed totals
rules:
    Explicit requirements:
      words are case sensitive
    Implicit requirements:
      elements are strings
Unclear parts of problem?
#------------------------------------------------------------------------------
EXAMPLES
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

output

car => 4
truck => 3
SUV => 1
motorcycle => 2
#------------------------------------------------------------------------------
DATA STRUCTURE
input array
store counts in hash

#------------------------------------------------------------------------------
ALGORITHM
define method
initilize empty hash
iterate through array
add new key if vehicle is not in string
increment value if key is in string

iterate through array
print key and hash
=end

def count_occurrences(array)
  occurances = {}
  array.uniq.each do |vehicle|
    occurances[vehicle] = array.count(vehicle)
    puts "#{vehicle} => #{occurances[vehicle]}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
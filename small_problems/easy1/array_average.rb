def average(array)
  total = 0
  array.each{|num| total += num}
  total/array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin

solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

.reduce ~ combines all elements of a given array by applying a binary operation
  operation done by block or symbol
  numebers.reduce(:+)

inject { |memo, obj| block } → obj    alias for .reduce
  memo is the accumulator
  obj is for each element in the block
  returns memo, the accumulator

=end